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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                 country                        impsan    ever_swasted   n_cell       n
----------------------------  ----------------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                    0      193     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    0      202     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    1        4     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    0      102     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    0      116     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    1        8     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    0      232     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    1        3     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    0       65     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    0      194     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    1        4     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      234     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       12     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      233     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        8     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    0      216     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    1       17     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      332     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    1       37     602
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    0       50      52
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    1        0      52
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    0        2      52
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      52
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      634     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       17     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       89     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        3     743
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                    0      201     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                    1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                    0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                    1        0     215
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                    0       81     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                    1        0     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                    0      763     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                    1       26     870
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                    0     1908    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                    1       58    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                    0     3009    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                    1      193    5168
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                    0      169    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                    1       10    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                    0      917    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                    1       89    1185
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                    0        3     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                    1        0     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    0      800     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    1        7     810
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    17885   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      626   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7670   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      321   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3991    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1      170    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1159    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       61    5381
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    1        6     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    0      203     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    1        3     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    0      102     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    1        2     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    0      119     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    1        4     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                    0      232     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                    1        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                    0       65     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                    1        0     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                    0      197     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                    1        1     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      242     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1        3     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      238     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        3     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      224     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    1        3     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      351     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    1        6     584
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    0       50      52
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    1        0      52
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    0        2      52
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      52
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      646     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1        1     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       91     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        0     738
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                    0      201     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                    1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                    0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                    1        0     215
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                    0       67     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                    1        0     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                    0      582     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                    1        1     650
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                    0     1760    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                    1       22    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                    0     2882    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                    1       59    4723
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                    0      176    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                    1        3    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                    0      987    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                    1       14    1180
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                    0        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                    1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                    0      265     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                    1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    18019   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1      288   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7753   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1      147   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3819    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1       19    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1105    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1        2    4945
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    1        5     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    0       38     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    1        0     240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    0      202     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    1        1     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     207
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                    0      107     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                    1        1     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                    0      121     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                    1        4     233
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                    0      232     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                    1        2     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                    0        1     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                    1        0     235
6-24 months                   ki0047075b-MAL-ED       PERU                           1                    0       65     263
6-24 months                   ki0047075b-MAL-ED       PERU                           1                    1        0     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    0      195     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    1        3     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      236     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       10     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      232     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        5     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    0      194     542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    1       14     542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    0      300     542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    1       34     542
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    0       10      10
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    1        0      10
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    0        0      10
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      10
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      613     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       17     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       86     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        3     719
6-24 months                   ki1114097-CONTENT       PERU                           1                    0      201     215
6-24 months                   ki1114097-CONTENT       PERU                           1                    1        0     215
6-24 months                   ki1114097-CONTENT       PERU                           0                    0       14     215
6-24 months                   ki1114097-CONTENT       PERU                           0                    1        0     215
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                    0       80     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                    1        0     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                    0      749     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                    1       29     858
6-24 months                   ki1135781-COHORTS       INDIA                          1                    0     1863    5025
6-24 months                   ki1135781-COHORTS       INDIA                          1                    1       40    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                    0     2969    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                    1      153    5025
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                    0      140    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                    1        7    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                    0      889    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                    1       77    1113
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                    0        3     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                    1        0     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    0      790     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    1        8     801
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    12012   17286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      359   17286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     4722   17286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      193   17286
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     4016    5423
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                    1      170    5423
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1169    5423
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       68    5423


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/db3a8303-4534-47f6-8639-b8b908703bef/44c47375-dafd-459d-b2be-f460874688b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db3a8303-4534-47f6-8639-b8b908703bef/44c47375-dafd-459d-b2be-f460874688b7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db3a8303-4534-47f6-8639-b8b908703bef/44c47375-dafd-459d-b2be-f460874688b7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db3a8303-4534-47f6-8639-b8b908703bef/44c47375-dafd-459d-b2be-f460874688b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0737174   0.0400869   0.1073479
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.0992658   0.0686595   0.1298721
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0327031   0.0242930   0.0411132
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    NA                0.0585551   0.0504041   0.0667061
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0566983   0.0208278   0.0925689
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0882432   0.0706348   0.1058515
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0341454   0.0310237   0.0372672
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0387638   0.0334618   0.0440659
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0409514   0.0344793   0.0474234
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0493627   0.0362516   0.0624738
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0135477   0.0077176   0.0193779
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    NA                0.0196998   0.0146642   0.0247354
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0161016   0.0139436   0.0182595
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0174283   0.0134709   0.0213857
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0696835   0.0345063   0.1048606
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.0997299   0.0674431   0.1320168
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0227566   0.0157318   0.0297814
6-24 months                   ki1135781-COHORTS     INDIA         0                    NA                0.0475302   0.0400506   0.0550099
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0476190   0.0131777   0.0820604
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0797101   0.0626228   0.0967975
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0298052   0.0263201   0.0332902
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0356912   0.0296518   0.0417306
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0408061   0.0342250   0.0473873
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0567283   0.0425976   0.0708590


### Parameter: E(Y)


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    NA                   NA                0.0897010   0.0668555   0.1125465
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         NA                   NA                0.0485681   0.0427068   0.0544294
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0835443   0.0677832   0.0993054
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0357332   0.0331536   0.0383127
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0429288   0.0372183   0.0486393
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         NA                   NA                0.0171501   0.0134470   0.0208532
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0165986   0.0147809   0.0184163
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months                   ki1135781-COHORTS     INDIA         NA                   NA                0.0384080   0.0330939   0.0437221
6-24 months                   ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0754717   0.0599461   0.0909973
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0319334   0.0290402   0.0348265
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0438871   0.0380629   0.0497114


### Parameter: RR


agecat                        studyid               country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.346573   0.7763993   2.335472
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    1                 1.790506   1.3368028   2.398192
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.556363   0.8015958   3.021803
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.135257   0.9681627   1.331190
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.205397   0.8761890   1.658298
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    1                 1.454104   0.8815470   2.398533
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.082399   0.8436039   1.388790
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.431185   0.7843747   2.611369
6-24 months                   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     INDIA         0                    1                 2.088634   1.4772682   2.953013
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.673913   0.7872542   3.559187
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.197484   0.9767868   1.468046
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.390190   1.0275779   1.880761


### Parameter: PAR


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0159836   -0.0120654   0.0440326
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0158650    0.0082258   0.0235042
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0268460   -0.0075650   0.0612569
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0015877   -0.0000750   0.0032504
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0019774   -0.0015070   0.0054619
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0036024   -0.0014964   0.0087012
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0004971   -0.0006816   0.0016757
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0188774   -0.0111540   0.0489089
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0156514    0.0090213   0.0222814
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0278526   -0.0055227   0.0612280
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0021282    0.0002005   0.0040559
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0030810   -0.0003589   0.0065209


### Parameter: PAF


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.1781877   -0.1979178   0.4362089
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.3266547    0.1555331   0.4631005
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3213380   -0.2384005   0.6280831
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0444326   -0.0034933   0.0900695
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0460633   -0.0384301   0.1236818
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.2100500   -0.1459440   0.4554525
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0299455   -0.0437791   0.0984628
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.2131576   -0.2036067   0.4856119
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.4075029    0.2194867   0.5502282
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3690476   -0.2598982   0.6840214
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0666452    0.0039269   0.1254144
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0702028   -0.0115612   0.1453580

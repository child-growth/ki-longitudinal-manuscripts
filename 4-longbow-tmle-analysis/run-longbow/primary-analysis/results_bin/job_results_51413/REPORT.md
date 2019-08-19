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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    0      202     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    1        3     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    0      103     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    0      116     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    1        8     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    0      232     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    1        3     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    0       65     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    1        0     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    0      195     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    1        3     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      235     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       11     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      235     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        6     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    0      216     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    1       17     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      332     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    1       37     602
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    0      635     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    1       18     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    0       31     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    1        1     685
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
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    0      799     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    1        8     810
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    17889   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      624   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7671   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      322   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3991    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1      170    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1159    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       61    5381
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    1        6     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    0      203     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    1        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    0      103     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    1        1     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    0      120     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    1        4     228
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
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      239     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        2     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      224     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    1        3     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      351     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    1        6     584
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    0      643     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    1        6     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    0       32     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        0     681
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    18022   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1      286   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7755   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1      148   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3819    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1       19    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1105    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1        2    4945
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    1        5     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    0       38     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    1        0     240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    0      201     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    1        2     207
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
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    0      196     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    1        2     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      237     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1        9     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      233     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        4     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    0      194     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    1       14     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    0      300     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    1       33     541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    0      572     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    1       12     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    0       28     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    1        1     613
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
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    0      789     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    1        9     801
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
![](/tmp/56f56ddd-bac3-4490-bb58-a934c5e20064/b2414db5-5a63-474c-97f6-7aea34019ff3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/56f56ddd-bac3-4490-bb58-a934c5e20064/b2414db5-5a63-474c-97f6-7aea34019ff3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/56f56ddd-bac3-4490-bb58-a934c5e20064/b2414db5-5a63-474c-97f6-7aea34019ff3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/56f56ddd-bac3-4490-bb58-a934c5e20064/b2414db5-5a63-474c-97f6-7aea34019ff3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0749813   0.0410093   0.1089532
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.0987519   0.0682208   0.1292830
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0319965   0.0238514   0.0401417
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    NA                0.0582578   0.0501555   0.0663600
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0548942   0.0205651   0.0892233
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0886131   0.0709846   0.1062417
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0340646   0.0309396   0.0371897
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0403718   0.0345060   0.0462375
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0409679   0.0344662   0.0474695
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0485810   0.0358936   0.0612683
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0134889   0.0075609   0.0194170
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    NA                0.0197385   0.0147115   0.0247655
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0158397   0.0137077   0.0179717
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0187132   0.0144692   0.0229571
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0668006   0.0324663   0.1011350
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.0980066   0.0658349   0.1301784
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0221830   0.0153878   0.0289783
6-24 months                   ki1135781-COHORTS     INDIA         0                    NA                0.0478443   0.0403169   0.0553718
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0476190   0.0131777   0.0820604
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0797101   0.0626228   0.0967975
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0299505   0.0264539   0.0334472
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0358234   0.0299502   0.0416966
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0408288   0.0342437   0.0474138
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0561270   0.0424734   0.0697806


### Parameter: E(Y)


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    NA                   NA                0.0897010   0.0668555   0.1125465
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         NA                   NA                0.0485681   0.0427068   0.0544294
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0835443   0.0677832   0.0993054
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0356900   0.0331097   0.0382704
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0429288   0.0372183   0.0486393
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         NA                   NA                0.0171501   0.0134470   0.0208532
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0165579   0.0147437   0.0183722
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months                   ki1135781-COHORTS     INDIA         NA                   NA                0.0384080   0.0330939   0.0437221
6-24 months                   ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0754717   0.0599461   0.0909973
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0319334   0.0290402   0.0348265
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0438871   0.0380629   0.0497114


### Parameter: RR


agecat                        studyid               country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.317021   0.7610012   2.279292
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    1                 1.820752   1.3625938   2.432962
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.614253   0.8374112   3.111750
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.185151   1.0046204   1.398123
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.185831   0.8650278   1.625606
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    1                 1.463311   0.8805464   2.431761
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.181409   0.9205888   1.516124
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.467151   0.7964026   2.702819
6-24 months                   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     INDIA         0                    1                 2.156800   1.5287223   3.042925
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.673913   0.7872542   3.559187
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.196084   0.9821853   1.456565
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.374692   1.0204462   1.851915


### Parameter: PAR


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0147197   -0.0136137   0.0430532
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0165716    0.0091469   0.0239963
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0286501   -0.0043429   0.0616432
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0016254   -0.0000486   0.0032993
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0019610   -0.0015380   0.0054599
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0036612   -0.0015426   0.0088649
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0007182   -0.0004344   0.0018708
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0200755   -0.0090520   0.0492030
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0162249    0.0097678   0.0226821
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0278526   -0.0055227   0.0612280
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0019828    0.0000589   0.0039067
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0030584   -0.0003838   0.0065006


### Parameter: PAF


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.1640978   -0.2157171   0.4252508
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.3412029    0.1760461   0.4732549
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3429332   -0.1901532   0.6372428
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0455417   -0.0027751   0.0915305
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0456794   -0.0392277   0.1236493
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.2134777   -0.1519808   0.4629968
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0433759   -0.0289145   0.1105873
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.2310820   -0.1818443   0.4997354
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.4224370    0.2410746   0.5604587
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3690476   -0.2598982   0.6840214
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0620923   -0.0004953   0.1207646
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0696870   -0.0121363   0.1448955

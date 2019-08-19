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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                 country                        impsan    ever_wasted   n_cell       n
----------------------------  ----------------------  -----------------------------  -------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   0      157     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   1       47     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   0       28     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   1       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   0      193     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   1       12     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   0       75     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   1       30     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   0       69     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   1       55     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   0      190     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   1       45     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   0       59     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   1        6     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   0      184     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   1       14     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      204     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       42     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      212     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       29     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   0      180     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   1       53     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   0      244     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   1      125     602
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   0      538     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   1      115     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   0       25     685
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   1        7     685
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      560     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       91     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       77     743
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       15     743
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                   0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                   1        7     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                   0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                   1        0     215
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                   0       73     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                   1        8     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                   0      666     870
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                   1      123     870
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                   0     1675    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                   1      291    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                   0     2500    5168
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                   1      702    5168
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                   0      142    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                   1       37    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                   0      661    1185
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                   1      345    1185
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                   0        3     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                   1        0     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                   0      753     810
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                   1       54     810
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   0    15467   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     3046   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     6552   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1441   26506
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     3144    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   1     1017    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      850    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      370    5381
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   0      188     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   1       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   0       35     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   1        3     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   0      198     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   1        7     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   0        4     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   0       90     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   1       14     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   0      102     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   1       22     228
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   0      218     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   1       15     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   0        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   0       64     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   1        1     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   0      194     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   1        4     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      234     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       11     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      233     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1        8     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   0      213     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   1       14     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   0      325     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   1       32     584
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   0      614     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   1       35     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   0       31     681
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   1        1     681
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      631     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       87     738
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        4     738
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                   0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                   1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                   0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                   1        0     215
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                   0       67     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                   1        0     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                   0      571     650
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                   1       12     650
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                   0     1651    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                   1      131    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                   0     2687    4723
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                   1      254    4723
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                   0      162    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                   1       17    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                   0      911    1180
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                   1       90    1180
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                   0        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                   1        0     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                   0      265     265
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                   1        0     265
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   0    17045   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     1263   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   0     7288   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   1      615   26211
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   0     3742    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   1       96    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   0     1078    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       29    4945
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   0      166     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   1       36     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                   0       30     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                   1        8     240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                   0      197     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                   1        6     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     207
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                   0       87     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                   1       21     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                   0       84     233
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                   1       41     233
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                   0      198     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                   1       36     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                   0        1     235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                   1        0     235
6-24 months                   ki0047075b-MAL-ED       PERU                           1                   0       60     263
6-24 months                   ki0047075b-MAL-ED       PERU                           1                   1        5     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   0      186     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   1       12     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      211     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       35     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      212     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       25     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   0      159     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   1       49     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   0      223     541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   1      110     541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   0      491     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   1       93     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   0       23     613
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   1        6     613
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0      550     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       80     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       75     719
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       14     719
6-24 months                   ki1114097-CONTENT       PERU                           1                   0      197     215
6-24 months                   ki1114097-CONTENT       PERU                           1                   1        4     215
6-24 months                   ki1114097-CONTENT       PERU                           0                   0       14     215
6-24 months                   ki1114097-CONTENT       PERU                           0                   1        0     215
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                   0       71     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                   1        9     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                   0      660     858
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                   1      118     858
6-24 months                   ki1135781-COHORTS       INDIA                          1                   0     1727    5025
6-24 months                   ki1135781-COHORTS       INDIA                          1                   1      176    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                   0     2637    5025
6-24 months                   ki1135781-COHORTS       INDIA                          0                   1      485    5025
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                   0      123    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                   1       24    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                   0      669    1113
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                   1      297    1113
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                   0        3     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                   1        0     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                   0      736     801
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                   1       62     801
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                   0    10448   17286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     1923   17286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     4006   17286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                   1      909   17286
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     3206    5423
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      980    5423
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      876    5423
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      361    5423


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/37ea306f-6b75-4cce-99ed-c734d0dc6267/6a7a6c96-9224-4d19-9ce6-232b8b206a0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/37ea306f-6b75-4cce-99ed-c734d0dc6267/6a7a6c96-9224-4d19-9ce6-232b8b206a0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/37ea306f-6b75-4cce-99ed-c734d0dc6267/6a7a6c96-9224-4d19-9ce6-232b8b206a0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/37ea306f-6b75-4cce-99ed-c734d0dc6267/6a7a6c96-9224-4d19-9ce6-232b8b206a0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2297256   0.1721185   0.2873327
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2816389   0.1333876   0.4298901
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                0.2785425   0.1905008   0.3665841
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                0.4269417   0.3385875   0.5152959
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                0.0707071   0.0349345   0.1064797
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2276862   0.1736615   0.2817108
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3394426   0.2910487   0.3878364
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1761103   0.1468731   0.2053474
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2187500   0.0754126   0.3620874
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1397005   0.1130388   0.1663623
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1605351   0.0844276   0.2366427
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                0.1636142   0.1458436   0.1813848
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                0.2127960   0.1983480   0.2272440
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2345626   0.1643154   0.3048099
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3390124   0.3095931   0.3684317
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1652609   0.1589698   0.1715519
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1864029   0.1749423   0.1978635
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2462612   0.2313054   0.2612170
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2967099   0.2663380   0.3270818
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1305550   0.0642091   0.1969009
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                0.1728763   0.1050724   0.2406803
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0607100   0.0292915   0.0921284
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0907679   0.0606083   0.1209275
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                0.0777931   0.0643205   0.0912657
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                0.0849776   0.0746944   0.0952608
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0918523   0.0488673   0.1348372
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0899992   0.0722036   0.1077948
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0703218   0.0659850   0.0746585
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0749188   0.0676195   0.0822181
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0250795   0.0198564   0.0303026
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0259889   0.0151810   0.0367969
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1782178   0.1253328   0.2311029
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                0.2079278   0.1323959   0.2834598
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                0.3278257   0.2465695   0.4090819
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                0.0606061   0.0273076   0.0939046
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2423041   0.1846785   0.2999297
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3328338   0.2823576   0.3833101
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.1592466   0.1295460   0.1889472
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.2068966   0.0593445   0.3544486
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1267163   0.1006648   0.1527679
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1465269   0.0682378   0.2248161
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                0.1100265   0.0943473   0.1257057
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                0.1474588   0.1348987   0.1600190
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1801791   0.1159743   0.2443840
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3060086   0.2768507   0.3351665
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1584653   0.1511425   0.1657880
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1909329   0.1746267   0.2072391
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2359517   0.2210902   0.2508133
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2872007   0.2573555   0.3170459


### Parameter: E(Y)


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.3711790   0.3084692   0.4338889
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          NA                   NA                0.0760456   0.0439490   0.1081423
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1781022   0.1494298   0.2067746
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1426649   0.1175009   0.1678289
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1505747   0.1267966   0.1743528
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         NA                   NA                0.1921440   0.1814014   0.2028866
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3223629   0.2957407   0.3489850
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1692824   0.1639784   0.1745865
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2577588   0.2441239   0.2713937
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1578947   0.1104594   0.2053301
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         NA                   NA                0.0815160   0.0737115   0.0893204
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0906780   0.0742871   0.1070688
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0716493   0.0679955   0.0753031
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0252781   0.0205710   0.0299851
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2660944   0.2092298   0.3229590
6-24 months                   ki0047075b-MAL-ED       PERU          NA                   NA                0.0646388   0.0348650   0.0944125
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1307371   0.1060790   0.1553953
6-24 months                   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1480186   0.1242431   0.1717942
6-24 months                   ki1135781-COHORTS       INDIA         NA                   NA                0.1315423   0.1221962   0.1408884
6-24 months                   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.2884097   0.2617831   0.3150363
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1638320   0.1577097   0.1699543
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2472801   0.2337480   0.2608122


### Parameter: RR


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.2259796   0.6831688   2.200080
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    1                 1.5327705   1.0496126   2.238336
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    1                 0.7659933   0.3064416   1.914706
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4908351   1.1302835   1.966400
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.2421196   0.6318260   2.441908
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.1491376   0.6891951   1.916028
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    1                 1.5784220   0.8012777   3.109304
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    1                 1.3005962   1.1447351   1.477678
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.4452959   1.0581330   1.974119
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1279314   1.0524613   1.208813
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2048586   1.0701312   1.356548
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    1                 1.3241649   0.6957933   2.520020
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4951067   0.8080256   2.766427
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    1                 1.0923539   0.8843021   1.349355
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9798257   0.5894658   1.628692
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.0653714   0.9541494   1.189558
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.0362613   0.6501916   1.651571
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.1812865   0.5956883   2.342564
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    1                 1.5766320   1.0150756   2.448851
6-24 months                   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       PERU          0                    1                 0.7878788   0.2878628   2.156419
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.3736203   1.0363391   1.820671
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.2992214   0.6216443   2.715341
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.1563382   0.6522125   2.050126
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    1                 1.3481862   0.7123909   2.551417
6-24 months                   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       INDIA         0                    1                 1.3402121   1.1359885   1.581150
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.6983575   1.1743695   2.456142
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.2048882   1.0958806   1.324739
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2172011   1.0796912   1.372224


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0058116   -0.0181463   0.0297696
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0926365    0.0234159   0.1618572
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                -0.0162621   -0.0757925   0.0432684
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0679949    0.0232544   0.1127354
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0019919   -0.0048752   0.0088590
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0029643   -0.0069947   0.0129234
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0518093   -0.0114732   0.1150918
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                 0.0285298    0.0134073   0.0436522
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0878002    0.0208171   0.1547834
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0040216    0.0007232   0.0073199
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0114976    0.0038933   0.0191019
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0273398   -0.0245200   0.0791995
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0180571   -0.0084497   0.0445640
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                 0.0037229   -0.0074856   0.0149313
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0011743   -0.0408904   0.0385418
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0013275   -0.0011132   0.0037683
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0001986   -0.0025215   0.0029186
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0051155   -0.0171404   0.0273714
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0581666   -0.0024034   0.1187365
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                -0.0122843   -0.0672089   0.0426403
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0515961    0.0041278   0.0990643
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0022542   -0.0049112   0.0094197
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0040208   -0.0059487   0.0139904
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0355186   -0.0313402   0.1023775
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                 0.0215158    0.0078830   0.0351486
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.1082306    0.0463469   0.1701142
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0053667    0.0013961   0.0093374
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0113284    0.0039491   0.0187077


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0246739   -0.0824028   0.1211580
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.2495737    0.0378136   0.4147292
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                -0.2138462   -1.3054314   0.3608908
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2299602    0.0639027   0.3665603
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0111842   -0.0281096   0.0489762
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0207783   -0.0515116   0.0880984
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.3440769   -0.2397390   0.6529631
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                 0.1484813    0.0663389   0.2233969
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2723646    0.0324392   0.4527959
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0237566    0.0040498   0.0430735
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0446061    0.0147826   0.0735268
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.1731518   -0.2277609   0.4431506
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2292472   -0.1855439   0.4989136
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                 0.0456704   -0.1021633   0.1736751
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0129502   -0.5608988   0.3426427
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0185284   -0.0161205   0.0519958
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0078547   -0.1056687   0.1097221
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0279028   -0.1012521   0.1419104
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                 0.2185938   -0.0411807   0.4135545
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                -0.1900452   -1.4225929   0.4154166
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1755564   -0.0017132   0.3214553
6-24 months                   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0139581   -0.0313765   0.0572999
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0307549   -0.0484535   0.1039792
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2399606   -0.3748179   0.5798281
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                 0.1635657    0.0539099   0.2605120
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3752667    0.1214759   0.5557417
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0327576    0.0081739   0.0567320
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0458119    0.0156065   0.0750905

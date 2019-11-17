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

agecat                        studyid                 country                        impsan    ever_wasted   n_cell       n
----------------------------  ----------------------  -----------------------------  -------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   0      157     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                   1       47     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   0       28     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                   1       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   0      193     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                   1       13     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   0        4     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                   1        0     210
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   0       74     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                   1       31     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   0       69     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                   1       55     229
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   0      189     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                   1       46     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   0        1     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                   1        0     236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   0       59     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                   1        6     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   0      183     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                   1       15     263
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      203     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       43     250
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      208     241
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       33     241
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   0      180     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                   1       53     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   0      244     602
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                   1      125     602
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   0       47      52
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                   1        3      52
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   0        2      52
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                   1        0      52
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   0    15464   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     3047   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     6551   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                   1     1440   26502
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     3144    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                   1     1017    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      850    5381
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      370    5381
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   0      188     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                   1       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   0       35     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                   1        3     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   0      198     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                   1        8     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   0        4     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                   1        0     210
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   0       89     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                   1       15     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   0      102     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                   1       21     227
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   0      217     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                   1       16     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   0        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                   1        0     234
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   0       64     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                   1        1     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   0      194     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                   1        4     263
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        4     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      232     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       13     249
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      231     241
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       10     241
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   0      213     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                   1       14     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   0      325     584
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                   1       32     584
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   0       48      52
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                   1        2      52
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   0        2      52
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                   1        0      52
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   0    17043   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     1264   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   0     7286   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                   1      614   26207
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   0     3742    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                   1       96    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   0     1078    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       29    4945
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   0      167     240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                   1       35     240
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
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   0      185     263
6-24 months                   ki0047075b-MAL-ED       PERU                           0                   1       13     263
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        3     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0      210     250
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       36     250
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      210     237
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       27     237
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   0      159     542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                   1       49     542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   0      224     542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                   1      110     542
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   0        9      10
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                   1        1      10
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   0        0      10
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                   1        0      10
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
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/4d2ebeac-ab00-44ed-8b2b-f129b376f1a4/233f302b-b157-4c17-bb98-b7a0c1d9cbba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d2ebeac-ab00-44ed-8b2b-f129b376f1a4/233f302b-b157-4c17-bb98-b7a0c1d9cbba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4d2ebeac-ab00-44ed-8b2b-f129b376f1a4/233f302b-b157-4c17-bb98-b7a0c1d9cbba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4d2ebeac-ab00-44ed-8b2b-f129b376f1a4/233f302b-b157-4c17-bb98-b7a0c1d9cbba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.2291671   0.1712833   0.2870509
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2537562   0.1073795   0.4001329
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                0.3132451   0.2242876   0.4022026
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    NA                0.4422068   0.3545199   0.5298936
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    NA                0.0757576   0.0388302   0.1126850
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2297566   0.1759996   0.2835136
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3372441   0.2890088   0.3854794
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1399199   0.1132614   0.1665784
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1747815   0.0983364   0.2512267
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                0.1638716   0.1460652   0.1816780
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    NA                0.2125787   0.1981336   0.2270238
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.2333672   0.1650038   0.3017305
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3400787   0.3105359   0.3696216
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1658145   0.1595483   0.1720806
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1858260   0.1744159   0.1972360
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2459215   0.2308456   0.2609974
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.3000662   0.2688855   0.3312470
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                0.1464071   0.0787406   0.2140735
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    NA                0.1753580   0.1080389   0.2426770
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.0612442   0.0297972   0.0926912
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.0897987   0.0599720   0.1196253
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                0.0771157   0.0638136   0.0904178
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    NA                0.0856252   0.0751851   0.0960654
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.0928958   0.0494510   0.1363405
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.0903576   0.0724653   0.1082498
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.0698941   0.0656373   0.0741509
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.0746113   0.0673504   0.0818722
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.0250813   0.0198518   0.0303107
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.0259621   0.0151206   0.0368035
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.1732673   0.1209651   0.2255695
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                0.2045958   0.1288976   0.2802940
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    NA                0.3269073   0.2455738   0.4082409
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   ki0047075b-MAL-ED       PERU          0                    NA                0.0656566   0.0310917   0.1002214
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2393875   0.1811414   0.2976337
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3275902   0.2769139   0.3782665
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.1268390   0.1008074   0.1528706
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.1655722   0.0870102   0.2441342
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                0.1075298   0.0922341   0.1228256
6-24 months                   ki1135781-COHORTS       INDIA         0                    NA                0.1476432   0.1350923   0.1601940
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.1966576   0.1297382   0.2635770
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.3061965   0.2770464   0.3353466
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.1591548   0.1517858   0.1665238
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.1886375   0.1734079   0.2038670
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2357016   0.2207794   0.2506239
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2937377   0.2629354   0.3245401


### Parameter: E(Y)


agecat                        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         NA                   NA                0.3755459   0.3126876   0.4384041
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          NA                   NA                0.0798479   0.0470264   0.1126695
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.1426649   0.1175009   0.1678289
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.1505747   0.1267966   0.1743528
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         NA                   NA                0.1921440   0.1814014   0.2028866
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.3223629   0.2957407   0.3489850
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.1693080   0.1640179   0.1745980
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2577588   0.2441239   0.2713937
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         NA                   NA                0.1585903   0.1109652   0.2062154
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         NA                   NA                0.0815160   0.0737115   0.0893204
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0906780   0.0742871   0.1070688
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0716602   0.0680237   0.0752968
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0252781   0.0205710   0.0299851
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   ki0047075b-MAL-ED       INDIA         NA                   NA                0.2660944   0.2092298   0.3229590
6-24 months                   ki0047075b-MAL-ED       PERU          NA                   NA                0.0684411   0.0378665   0.0990157
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.2933579   0.2549918   0.3317241
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.1072979   0.5898400   2.078714
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         0                    1                 1.4116957   1.0007273   1.991436
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          0                    1                 0.8207071   0.3316556   2.030902
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4678322   1.1169155   1.929001
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.2491540   0.7749961   2.013411
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     0                    1                 1.5784220   0.8012777   3.109304
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         0                    1                 1.2972273   1.1417078   1.473931
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.4572691   1.0735340   1.978170
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1206860   1.0466508   1.199958
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2201710   1.0818319   1.376200
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         0                    1                 1.1977423   0.6555774   2.188280
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.4662390   0.7952156   2.703489
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         0                    1                 1.1103480   0.8989296   1.371490
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9726772   0.5852456   1.616588
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.0674911   0.9555100   1.192596
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.0351185   0.6483769   1.652543
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    0                    1                 1.2150376   0.6113418   2.414879
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       INDIA         0                    1                 1.5978203   1.0217087   2.498784
6-24 months                   ki0047075b-MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       PERU          0                    1                 0.8535354   0.3157269   2.307445
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.3684513   1.0260523   1.825111
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 1.3053729   0.7780753   2.190017
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       GUATEMALA     0                    1                 1.3481862   0.7123909   2.551417
6-24 months                   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       INDIA         0                    1                 1.3730439   1.1642453   1.619289
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS       PHILIPPINES   0                    1                 1.5570032   1.0936198   2.216729
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 1.1852451   1.0822775   1.298009
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.2462270   1.1044756   1.406171


### Parameter: PAR


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0063701   -0.0177907   0.0305309
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0623007   -0.0058581   0.1304596
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                -0.0124598   -0.0723842   0.0474646
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0659245    0.0215814   0.1102676
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0027450   -0.0072006   0.0126906
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0518093   -0.0114732   0.1150918
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                 0.0282724    0.0131267   0.0434181
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0889957    0.0238636   0.1541278
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0034935    0.0001991   0.0067880
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0118373    0.0040874   0.0195873
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0121832   -0.0393872   0.0637536
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0175229   -0.0089544   0.0440002
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                 0.0044003   -0.0066449   0.0154455
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0022178   -0.0423073   0.0378717
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0017661   -0.0006255   0.0041577
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0001968   -0.0025229   0.0029165
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0058993   -0.0163386   0.0281373
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0614986    0.0005373   0.1224599
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                -0.0084820   -0.0638448   0.0468808
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0539704    0.0060011   0.1019397
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0038981   -0.0060794   0.0138757
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0355186   -0.0313402   0.1023775
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                 0.0240125    0.0107192   0.0373057
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0917521    0.0273327   0.1561715
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0046772    0.0006995   0.0086549
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0115785    0.0041284   0.0190285


### Parameter: PAF


agecat                        studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0270450   -0.0810669   0.1243452
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA         1                    NA                 0.1658938   -0.0367457   0.3289260
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU          1                    NA                -0.1560440   -1.2084404   0.3948500
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2229580    0.0586846   0.3585633
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0192406   -0.0529421   0.0864750
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.3440769   -0.2397390   0.6529631
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA         1                    NA                 0.1471417    0.0648577   0.2221854
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.2760731    0.0437260   0.4519665
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0206341    0.0009622   0.0399186
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0459240    0.0154992   0.0754086
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0768220   -0.3118219   0.3503252
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.2224645   -0.1911315   0.4924477
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA         1                    NA                 0.0539809   -0.0916079   0.1801523
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0244578   -0.5772780   0.3346044
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0246459   -0.0092685   0.0574207
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0077852   -0.1057282   0.1096455
6-24 months                   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0329265   -0.0992978   0.1492469
6-24 months                   ki0047075b-MAL-ED       INDIA         1                    NA                 0.2311157   -0.0312134   0.4267112
6-24 months                   ki0047075b-MAL-ED       PERU          1                    NA                -0.1239316   -1.3051391   0.4519974
6-24 months                   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.1839745    0.0037988   0.3315632
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0298165   -0.0494370   0.1030848
6-24 months                   ki1135781-COHORTS       GUATEMALA     1                    NA                 0.2399606   -0.3748179   0.5798281
6-24 months                   ki1135781-COHORTS       INDIA         1                    NA                 0.1825456    0.0758153   0.2769501
6-24 months                   ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.3181312    0.0556887   0.5076358
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                 0.0285487    0.0039172   0.0525712
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0468233    0.0163111   0.0763890

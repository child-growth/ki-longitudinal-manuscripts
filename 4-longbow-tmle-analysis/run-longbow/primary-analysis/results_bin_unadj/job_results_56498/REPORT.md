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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                 country                        impsan    ever_swasted   n_cell       n  outcome_variable 
----------------------------  ----------------------  -----------------------------  -------  -------------  -------  ------  -----------------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                    0      193     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     1                    1       11     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     242  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    0      202     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         1                    1        4     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     210  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    0      102     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          1                    1        3     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    0      116     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0                    1        8     229  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    0      232     236  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          1                    1        3     236  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    0        1     236  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0                    1        0     236  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    0       65     263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           1                    1        0     263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    0      194     263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0                    1        4     263  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      234     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       12     250  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      233     241  ever_swasted     
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        8     241  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    0      216     602  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     1                    1       17     602  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    0      332     602  ever_swasted     
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0                    1       37     602  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    0       50      52  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     1                    1        0      52  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    0        2      52  ever_swasted     
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      52  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      634     743  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       17     743  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       89     743  ever_swasted     
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        3     743  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                    0      201     215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           1                    1        0     215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                    0       14     215  ever_swasted     
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0                    1        0     215  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                    0       81     870  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      1                    1        0     870  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                    0      763     870  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       GUATEMALA                      0                    1       26     870  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                    0     1908    5168  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          1                    1       58    5168  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                    0     3009    5168  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       INDIA                          0                    1      193    5168  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                    0      169    1185  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    1                    1       10    1185  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                    0      917    1185  ever_swasted     
0-24 months (no birth wast)   ki1135781-COHORTS       PHILIPPINES                    0                    1       89    1185  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                    0        3     810  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         1                    1        0     810  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    0      800     810  ever_swasted     
0-24 months (no birth wast)   ki1148112-LCNI-5        MALAWI                         0                    1        7     810  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    17885   26502  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      626   26502  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7670   26502  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      321   26502  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3991    5381  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     1                    1      170    5381  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1159    5381  ever_swasted     
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       61    5381  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     1                    1        6     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    0       37     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0                    1        1     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    0      203     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         1                    1        3     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    0        4     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0                    1        0     210  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    0      102     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          1                    1        2     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    0      119     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0                    1        4     227  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                    0      232     234  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          1                    1        1     234  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                    0        1     234  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0                    1        0     234  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                    0       65     263  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           1                    1        0     263  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                    0      197     263  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0                    1        1     263  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     249  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     249  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      242     249  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1        3     249  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      238     241  ever_swasted     
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        3     241  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    0      224     584  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     1                    1        3     584  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    0      351     584  ever_swasted     
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0                    1        6     584  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    0       50      52  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     1                    1        0      52  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    0        2      52  ever_swasted     
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      52  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      646     738  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1        1     738  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       91     738  ever_swasted     
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        0     738  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                    0      201     215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           1                    1        0     215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                    0       14     215  ever_swasted     
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0                    1        0     215  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                    0       67     650  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      1                    1        0     650  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                    0      582     650  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       GUATEMALA                      0                    1        1     650  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                    0     1760    4723  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          1                    1       22    4723  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                    0     2882    4723  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       INDIA                          0                    1       59    4723  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                    0      176    1180  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    1                    1        3    1180  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                    0      987    1180  ever_swasted     
0-6 months (no birth wast)    ki1135781-COHORTS       PHILIPPINES                    0                    1       14    1180  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                    0        0     265  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         1                    1        0     265  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                    0      265     265  ever_swasted     
0-6 months (no birth wast)    ki1148112-LCNI-5        MALAWI                         0                    1        0     265  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    0    18019   26207  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     1                    1      288   26207  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    0     7753   26207  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH                     0                    1      147   26207  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    0     3819    4945  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     1                    1       19    4945  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1105    4945  ever_swasted     
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH                     0                    1        2    4945  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    0      197     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     1                    1        5     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    0       38     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0                    1        0     240  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    0      202     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         1                    1        1     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                    0        4     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0                    1        0     207  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                    0      107     233  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          1                    1        1     233  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                    0      121     233  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       INDIA                          0                    1        4     233  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                    0      232     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          1                    1        2     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                    0        1     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0                    1        0     235  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           1                    0       65     263  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           1                    1        0     263  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    0      195     263  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       PERU                           0                    1        3     263  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    0        4     250  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1        0     250  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    0      236     250  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1       10     250  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     237  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     237  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      232     237  ever_swasted     
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        5     237  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    0      194     542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     1                    1       14     542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    0      300     542  ever_swasted     
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0                    1       34     542  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    0       10      10  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     1                    1        0      10  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    0        0      10  ever_swasted     
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0                    1        0      10  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                    0      613     719  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1       17     719  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                    0       86     719  ever_swasted     
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1        3     719  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           1                    0      201     215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           1                    1        0     215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           0                    0       14     215  ever_swasted     
6-24 months                   ki1114097-CONTENT       PERU                           0                    1        0     215  ever_swasted     
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                    0       80     858  ever_swasted     
6-24 months                   ki1135781-COHORTS       GUATEMALA                      1                    1        0     858  ever_swasted     
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                    0      749     858  ever_swasted     
6-24 months                   ki1135781-COHORTS       GUATEMALA                      0                    1       29     858  ever_swasted     
6-24 months                   ki1135781-COHORTS       INDIA                          1                    0     1863    5025  ever_swasted     
6-24 months                   ki1135781-COHORTS       INDIA                          1                    1       40    5025  ever_swasted     
6-24 months                   ki1135781-COHORTS       INDIA                          0                    0     2969    5025  ever_swasted     
6-24 months                   ki1135781-COHORTS       INDIA                          0                    1      153    5025  ever_swasted     
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                    0      140    1113  ever_swasted     
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    1                    1        7    1113  ever_swasted     
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                    0      889    1113  ever_swasted     
6-24 months                   ki1135781-COHORTS       PHILIPPINES                    0                    1       77    1113  ever_swasted     
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                    0        3     801  ever_swasted     
6-24 months                   ki1148112-LCNI-5        MALAWI                         1                    1        0     801  ever_swasted     
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    0      790     801  ever_swasted     
6-24 months                   ki1148112-LCNI-5        MALAWI                         0                    1        8     801  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                    0    12012   17286  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     1                    1      359   17286  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                    0     4722   17286  ever_swasted     
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH                     0                    1      193   17286  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                    0     4016    5423  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     1                    1      170    5423  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                    0     1169    5423  ever_swasted     
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH                     0                    1       68    5423  ever_swasted     


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/191278c2-f79e-4528-a4fc-2fa0938e78c8/6c82963a-a904-4351-9770-b112e87aee54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/191278c2-f79e-4528-a4fc-2fa0938e78c8/6c82963a-a904-4351-9770-b112e87aee54/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/191278c2-f79e-4528-a4fc-2fa0938e78c8/6c82963a-a904-4351-9770-b112e87aee54/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/191278c2-f79e-4528-a4fc-2fa0938e78c8/6c82963a-a904-4351-9770-b112e87aee54/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0729614   0.0395398   0.1063829
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.1002710   0.0695992   0.1309428
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0295015   0.0220212   0.0369818
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    NA                0.0602748   0.0520306   0.0685190
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0558659   0.0222074   0.0895245
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0884692   0.0709136   0.1060247
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0338177   0.0307935   0.0368420
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0401702   0.0357084   0.0446320
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0408556   0.0343028   0.0474084
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0500000   0.0366238   0.0633762
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0123457   0.0072182   0.0174731
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    NA                0.0200612   0.0149933   0.0251291
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0157317   0.0136490   0.0178143
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0186076   0.0154365   0.0217787
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0673077   0.0332262   0.1013892
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    NA                0.1017964   0.0693378   0.1342550
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0210194   0.0145738   0.0274651
6-24 months                   ki1135781-COHORTS     INDIA         0                    NA                0.0490070   0.0414336   0.0565805
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0476190   0.0131777   0.0820604
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    NA                0.0797101   0.0626228   0.0967975
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0290195   0.0256849   0.0323541
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    NA                0.0392675   0.0337094   0.0448257
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0406116   0.0339512   0.0472719
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    NA                0.0549717   0.0418296   0.0681139


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
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.374303   0.7922571   2.383958
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         0                    1                 2.043109   1.5316999   2.725269
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.583598   0.8397713   2.986270
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.187844   1.0352404   1.362943
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.223823   0.8866382   1.689239
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         0                    1                 1.624958   0.9993652   2.642164
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.182810   0.9635212   1.452007
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    0                    1                 1.512404   0.8313663   2.751333
6-24 months                   ki1135781-COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     INDIA         0                    1                 2.331510   1.6538794   3.286781
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS     PHILIPPINES   0                    1                 1.673913   0.7872542   3.559187
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    0                    1                 1.353144   1.1302905   1.619937
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    0                    1                 1.353597   1.0052656   1.822629


### Parameter: PAR


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0167396   -0.0110860   0.0445652
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.0190666    0.0121574   0.0259758
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0276784   -0.0045559   0.0599127
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0019154    0.0003437   0.0034872
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0020733   -0.0014145   0.0055610
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.0048044    0.0003140   0.0092949
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0008669   -0.0002232   0.0019571
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.0212532   -0.0077843   0.0502907
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.0173885    0.0111983   0.0235787
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.0278526   -0.0055227   0.0612280
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0029139    0.0010899   0.0047378
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0032756   -0.0001732   0.0067244


### Parameter: PAF


agecat                        studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.1866158   -0.1865444   0.4424196
0-24 months (no birth wast)   ki1135781-COHORTS     INDIA         1                    NA                0.3925742    0.2418270   0.5133483
0-24 months (no birth wast)   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3313018   -0.1828008   0.6219505
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0536035    0.0083904   0.0967551
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0482953   -0.0364734   0.1261311
0-6 months (no birth wast)    ki1135781-COHORTS     INDIA         1                    NA                0.2801402   -0.0257671   0.4948190
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0522291   -0.0158035   0.1157054
6-24 months                   ki1017093-NIH-Birth   BANGLADESH    1                    NA                0.2399840   -0.1615330   0.5027052
6-24 months                   ki1135781-COHORTS     INDIA         1                    NA                0.4527321    0.2813770   0.5832277
6-24 months                   ki1135781-COHORTS     PHILIPPINES   1                    NA                0.3690476   -0.2598982   0.6840214
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH    1                    NA                0.0912486    0.0321428   0.1467450
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH    1                    NA                0.0746365   -0.0076683   0.1502189

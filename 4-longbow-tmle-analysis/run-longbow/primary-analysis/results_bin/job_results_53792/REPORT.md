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

**Outcome Variable:** pers_wast

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

agecat        studyid                 country                        impsan    pers_wast   n_cell       n
------------  ----------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 0      192     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 1       12     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 0       37     242
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 1        1     242
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 0      204     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 1        2     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 0        4     210
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 1        0     210
0-24 months   ki0047075b-MAL-ED       INDIA                          1                 0      100     233
0-24 months   ki0047075b-MAL-ED       INDIA                          1                 1        8     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0                 0      113     233
0-24 months   ki0047075b-MAL-ED       INDIA                          0                 1       12     233
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                 0      232     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                 1        3     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                 0        1     236
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                 1        0     236
0-24 months   ki0047075b-MAL-ED       PERU                           1                 0       65     263
0-24 months   ki0047075b-MAL-ED       PERU                           1                 1        0     263
0-24 months   ki0047075b-MAL-ED       PERU                           0                 0      197     263
0-24 months   ki0047075b-MAL-ED       PERU                           0                 1        1     263
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 0        4     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 1        0     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 0      244     250
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 1        2     250
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241     241
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0     241
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 0      193     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 1       14     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 0      294     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 1       33     534
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 0       13      13
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 1        0      13
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 0        0      13
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 1        0      13
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 0      609     719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 1       21     719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 0       84     719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 1        5     719
0-24 months   ki1114097-CONTENT       PERU                           1                 0      201     215
0-24 months   ki1114097-CONTENT       PERU                           1                 1        0     215
0-24 months   ki1114097-CONTENT       PERU                           0                 0       14     215
0-24 months   ki1114097-CONTENT       PERU                           0                 1        0     215
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                 0       72     768
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                 1        1     768
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                 0      666     768
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                 1       29     768
0-24 months   ki1135781-COHORTS       INDIA                          1                 0     1473    4126
0-24 months   ki1135781-COHORTS       INDIA                          1                 1       99    4126
0-24 months   ki1135781-COHORTS       INDIA                          0                 0     2240    4126
0-24 months   ki1135781-COHORTS       INDIA                          0                 1      314    4126
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 0      146    1118
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 1        3    1118
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 0      919    1118
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 1       50    1118
0-24 months   ki1148112-LCNI-5        MALAWI                         1                 0        3     711
0-24 months   ki1148112-LCNI-5        MALAWI                         1                 1        0     711
0-24 months   ki1148112-LCNI-5        MALAWI                         0                 0      702     711
0-24 months   ki1148112-LCNI-5        MALAWI                         0                 1        6     711
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 0    10746   15793
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 1      580   15793
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 0     4151   15793
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 1      316   15793
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 0     3770    5279
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 1      302    5279
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 0     1083    5279
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 1      124    5279
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                 0      198     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                 1        6     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                 0       37     242
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                 1        1     242
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                 0      205     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                 1        1     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                 0        4     210
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                 1        0     210
0-6 months    ki0047075b-MAL-ED       INDIA                          1                 0       99     232
0-6 months    ki0047075b-MAL-ED       INDIA                          1                 1        8     232
0-6 months    ki0047075b-MAL-ED       INDIA                          0                 0      115     232
0-6 months    ki0047075b-MAL-ED       INDIA                          0                 1       10     232
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                 0      229     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                 1        6     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                 0        1     236
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                 1        0     236
0-6 months    ki0047075b-MAL-ED       PERU                           1                 0       65     263
0-6 months    ki0047075b-MAL-ED       PERU                           1                 1        0     263
0-6 months    ki0047075b-MAL-ED       PERU                           0                 0      198     263
0-6 months    ki0047075b-MAL-ED       PERU                           0                 1        0     263
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                 0        4     249
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                 1        0     249
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                 0      243     249
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                 1        2     249
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241     241
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0     241
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                 0       53     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                 1        4     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                 0      105     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                 1        7     169
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                 0       13      13
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                 1        0      13
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                 0        0      13
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                 1        0      13
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                 0      231     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                 1        4     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                 0       14     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                 1        1     250
0-6 months    ki1114097-CONTENT       PERU                           1                 0      201     215
0-6 months    ki1114097-CONTENT       PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT       PERU                           0                 0       14     215
0-6 months    ki1114097-CONTENT       PERU                           0                 1        0     215
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                 0       39     336
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                 1        1     336
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                 0      281     336
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                 1       15     336
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                 0       31      50
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                 1        2      50
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                 0       17      50
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                 1        0      50
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 0      192     242
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                 1       12     242
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 0       37     242
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                 1        1     242
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 0      204     210
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                 1        2     210
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 0        4     210
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                 1        0     210
6-24 months   ki0047075b-MAL-ED       INDIA                          1                 0      100     233
6-24 months   ki0047075b-MAL-ED       INDIA                          1                 1        8     233
6-24 months   ki0047075b-MAL-ED       INDIA                          0                 0      113     233
6-24 months   ki0047075b-MAL-ED       INDIA                          0                 1       12     233
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                 0      232     236
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                 1        3     236
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                 0        1     236
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                 1        0     236
6-24 months   ki0047075b-MAL-ED       PERU                           1                 0       65     263
6-24 months   ki0047075b-MAL-ED       PERU                           1                 1        0     263
6-24 months   ki0047075b-MAL-ED       PERU                           0                 0      197     263
6-24 months   ki0047075b-MAL-ED       PERU                           0                 1        1     263
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 0        4     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                 1        0     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 0      244     250
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                 1        2     250
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 0        0     241
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                 1        0     241
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 0      241     241
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                 1        0     241
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 0      193     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                 1       14     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 0      294     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                 1       33     534
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 0       13      13
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                 1        0      13
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 0        0      13
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                 1        0      13
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 0      609     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                 1       21     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 0       84     719
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                 1        5     719
6-24 months   ki1114097-CONTENT       PERU                           1                 0      201     215
6-24 months   ki1114097-CONTENT       PERU                           1                 1        0     215
6-24 months   ki1114097-CONTENT       PERU                           0                 0       14     215
6-24 months   ki1114097-CONTENT       PERU                           0                 1        0     215
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                 0       72     768
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                 1        1     768
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                 0      666     768
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                 1       29     768
6-24 months   ki1135781-COHORTS       INDIA                          1                 0     1473    4126
6-24 months   ki1135781-COHORTS       INDIA                          1                 1       99    4126
6-24 months   ki1135781-COHORTS       INDIA                          0                 0     2240    4126
6-24 months   ki1135781-COHORTS       INDIA                          0                 1      314    4126
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 0      146    1118
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                 1        3    1118
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 0      919    1118
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                 1       50    1118
6-24 months   ki1148112-LCNI-5        MALAWI                         1                 0        3     711
6-24 months   ki1148112-LCNI-5        MALAWI                         1                 1        0     711
6-24 months   ki1148112-LCNI-5        MALAWI                         0                 0      702     711
6-24 months   ki1148112-LCNI-5        MALAWI                         0                 1        6     711
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 0    10746   15793
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                 1      580   15793
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 0     4151   15793
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                 1      316   15793
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 0     3770    5279
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                 1      302    5279
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 0     1083    5279
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                 1      124    5279


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
![](/tmp/543d600d-697f-433a-a9ea-48f20e1d5a32/5c37b1e5-2d14-40b3-8b8e-2bc62ca84043/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/543d600d-697f-433a-a9ea-48f20e1d5a32/5c37b1e5-2d14-40b3-8b8e-2bc62ca84043/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/543d600d-697f-433a-a9ea-48f20e1d5a32/5c37b1e5-2d14-40b3-8b8e-2bc62ca84043/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/543d600d-697f-433a-a9ea-48f20e1d5a32/5c37b1e5-2d14-40b3-8b8e-2bc62ca84043/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.0740741   0.0245756   0.1235725
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.0960000   0.0442456   0.1477544
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0671813   0.0327637   0.1015989
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0993742   0.0666145   0.1321338
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0333333   0.0193066   0.0473601
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0561798   0.0083069   0.1040527
0-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.0716347   0.0579301   0.0853392
0-24 months   ki1135781-COHORTS       INDIA        0                    NA                0.1151213   0.1028277   0.1274149
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0518325   0.0470942   0.0565708
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0629656   0.0550693   0.0708619
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0754617   0.0659347   0.0849888
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1016141   0.0818413   0.1213868
0-6 months    ki0047075b-MAL-ED       INDIA        1                    NA                0.0747664   0.0248235   0.1247092
0-6 months    ki0047075b-MAL-ED       INDIA        0                    NA                0.0800000   0.0323382   0.1276618
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.0740741   0.0245756   0.1235725
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.0960000   0.0442456   0.1477544
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0708031   0.0370182   0.1045880
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1028104   0.0699411   0.1356797
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0333333   0.0193066   0.0473601
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0561798   0.0083069   0.1040527
6-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.0735436   0.0593954   0.0876917
6-24 months   ki1135781-COHORTS       INDIA        0                    NA                0.1162696   0.1037879   0.1287513
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0518265   0.0470964   0.0565567
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0646591   0.0560647   0.0732535
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0751184   0.0657057   0.0845311
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1023364   0.0820230   0.1226498


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0361613   0.0225058   0.0498169
0-24 months   ki1135781-COHORTS       INDIA        NA                   NA                0.1000969   0.0909380   0.1092559
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0567340   0.0526185   0.0608495
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100
0-6 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.0775862   0.0430879   0.1120845
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.0858369   0.0497913   0.1218826
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0361613   0.0225058   0.0498169
6-24 months   ki1135781-COHORTS       INDIA        NA                   NA                0.1000969   0.0909380   0.1092559
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0567340   0.0526185   0.0608495
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0806971   0.0720842   0.0893100


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.296000   0.5491950   3.058324
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.479194   0.8038287   2.721992
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.685393   0.6515657   4.359577
0-24 months   ki1135781-COHORTS       INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS       INDIA        0                    1                 1.607061   1.2912823   2.000062
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.214789   1.0428961   1.415013
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.346565   1.0716918   1.691938
0-6 months    ki0047075b-MAL-ED       INDIA        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA        0                    1                 1.070000   0.4371800   2.618830
6-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.296000   0.5491950   3.058324
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.452062   0.8161471   2.583459
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.685393   0.6515657   4.359577
6-24 months   ki1135781-COHORTS       INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS       INDIA        0                    1                 1.580963   1.2687537   1.969998
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.247606   1.0653104   1.461095
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.362334   1.0814425   1.716185


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.0117628   -0.0266826   0.0502083
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0208337   -0.0083403   0.0500077
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0028280   -0.0033715   0.0090275
0-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.0284623    0.0162017   0.0407228
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0049015    0.0021832   0.0076197
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0052354    0.0002804   0.0101904
0-6 months    ki0047075b-MAL-ED       INDIA        1                    NA                0.0028199   -0.0343776   0.0400173
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.0117628   -0.0266826   0.0502083
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0172119   -0.0115091   0.0459329
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0028280   -0.0033715   0.0090275
6-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.0265534    0.0139243   0.0391824
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0049075    0.0021987   0.0076162
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0055787    0.0007454   0.0104120


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1370370   -0.4448822   0.4845911
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2367063   -0.1706587   0.5023167
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0782051   -0.1073443   0.2326634
0-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.2843471    0.1538802   0.3946967
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0863937    0.0373246   0.1329617
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0648769    0.0016876   0.1240666
0-6 months    ki0047075b-MAL-ED       INDIA        1                    NA                0.0363448   -0.5844823   0.4139212
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1370370   -0.4448822   0.4845911
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1955564   -0.1982000   0.4599153
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0782051   -0.1073443   0.2326634
6-24 months   ki1135781-COHORTS       INDIA        1                    NA                0.2652767    0.1302578   0.3793353
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0864994    0.0376137   0.1329018
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0691312    0.0076297   0.1268212

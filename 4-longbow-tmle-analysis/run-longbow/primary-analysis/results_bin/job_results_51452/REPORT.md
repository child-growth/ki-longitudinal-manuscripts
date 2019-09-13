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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

agecat        studyid                 country        hfoodsec                pers_wast   n_cell       n
------------  ----------------------  -------------  ---------------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      152     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        9     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       27     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        2     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     0      173     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     1       17     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   0       16     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   1        1     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     0       93     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     0       27     112
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     1        0     112
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29     112
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0     112
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   0       55     112
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   1        1     112
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      131     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        0     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     232
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        1     232
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       74     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        4     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      379     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1       38     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0       34     534
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        5     534
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      425     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1       13     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       82     730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        3     730
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      358     574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     1       56     574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0       75     574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        6     574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0       60     574
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       19     574
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0     7511   15650
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1      384   15650
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0     4870   15650
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1      303   15650
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0     2376   15650
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1      206   15650
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     0     2471    5240
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     1      205    5240
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            0     1716    5240
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            1      168    5240
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   0      629    5240
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   1       51    5240
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      156     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        5     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       28     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        1     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                     0      175     211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                     1       14     211
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3     211
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2     211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                   0       15     211
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                   1        2     211
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     0       91     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                     1        2     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19     127
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0     127
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                     0       27     112
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                     1        0     112
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29     112
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0     112
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                   0       56     112
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                   1        0     112
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      129     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        1     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     230
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        0     230
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       22     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        1     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      130     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1        9     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0        6     169
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        1     169
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      143     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1        2     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0       76     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1        2     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       26     250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        1     250
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      324     524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                     1       52     524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0       73     524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        4     524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0       65     524
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1        6     524
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0       19      46
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1        0      46
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0       16      46
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1        1      46
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0        9      46
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1        1      46
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     0      152     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                     1        9     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            0        4     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure            1        0     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   0       27     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                   1        2     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                     1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure            1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   0      115     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                   1        0     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     0      173     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                     1       17     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            0        3     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure            1        2     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   0       16     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                   1        1     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     0       93     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                     1        1     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            0       14     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure            1        1     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   0       19     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                   1        0     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     0       27     112
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                     1        0     112
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            0       29     112
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure            1        0     112
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   0       55     112
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                   1        1     112
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     0      131     232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                     1        0     232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            0       18     232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure            1        1     232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   0       81     232
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                   1        1     232
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     0       74     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                     1        4     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            0      379     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure            1       38     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   0       34     534
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                   1        5     534
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     0      425     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                     1       13     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            0      197     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure            1       10     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   0       82     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                   1        3     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     0      358     574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                     1       56     574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            0       75     574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure            1        6     574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   0       60     574
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                   1       19     574
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     0     7511   15650
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                     1      384   15650
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            0     4870   15650
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure            1      303   15650
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   0     2376   15650
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                   1      206   15650
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     0     2471    5240
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                     1      205    5240
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            0     1716    5240
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure            1      168    5240
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   0      629    5240
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                   1       51    5240


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/20592072-9f92-43cf-afb2-77ed9b6c3e7a/0f1305af-53b3-4f32-82e0-728c04bc0159/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/20592072-9f92-43cf-afb2-77ed9b6c3e7a/0f1305af-53b3-4f32-82e0-728c04bc0159/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/20592072-9f92-43cf-afb2-77ed9b6c3e7a/0f1305af-53b3-4f32-82e0-728c04bc0159/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/20592072-9f92-43cf-afb2-77ed9b6c3e7a/0f1305af-53b3-4f32-82e0-728c04bc0159/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            NA                0.1352657   0.1022925   0.1682389
0-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   NA                0.0740741   0.0169912   0.1311569
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          NA                0.2405063   0.1461788   0.3348339
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            NA                0.0492955   0.0437449   0.0548460
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0569908   0.0497293   0.0642523
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          NA                0.0773874   0.0655127   0.0892622
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            NA                0.0766752   0.0651770   0.0881733
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0896874   0.0747859   0.1045888
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          NA                0.0743790   0.0529226   0.0958354
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            NA                0.1352657   0.1022925   0.1682389
6-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   NA                0.0740741   0.0169912   0.1311569
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          NA                0.2405063   0.1461788   0.3348339
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            NA                0.0489034   0.0434198   0.0543871
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0575952   0.0502017   0.0649887
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          NA                0.0762531   0.0646723   0.0878340
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            NA                0.0765849   0.0651020   0.0880677
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0895653   0.0746700   0.1044605
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          NA                0.0743704   0.0524999   0.0962408


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1411150   0.1126097   0.1696202
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570607   0.0529791   0.0611424
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0809160   0.0722421   0.0895899
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1411150   0.1126097   0.1696202
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0570607   0.0529791   0.0611424
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0809160   0.0722421   0.0895899


### Parameter: RR


agecat        studyid               country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   Food Secure       0.5476190   0.2440385   1.228850
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          Food Secure       1.7780289   1.1204380   2.821563
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.1561059   0.9774372   1.367434
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.5698688   1.3002901   1.895337
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.1697057   0.9377287   1.459070
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.9700536   0.7086751   1.327835
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        Mildly Food Insecure   Food Secure       0.5476190   0.2440385   1.228850
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Insecure          Food Secure       1.7780289   1.1204380   2.821563
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.1777329   0.9954947   1.393332
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.5592592   1.2936685   1.879376
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.1694907   0.9375407   1.458826
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.9710845   0.7060440   1.335618


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0058493   -0.0123562   0.0240547
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.0077652    0.0035025   0.0120279
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.0042409   -0.0037668   0.0122486
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0058493   -0.0123562   0.0240547
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.0081573    0.0039893   0.0123252
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.0043312   -0.0036546   0.0123169


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0414505   -0.0964327   0.1619940
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.1360870    0.0585939   0.2072011
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.0524107   -0.0517605   0.1462644
6-24 months   ki1113344-GMS-Nepal   NEPAL        Food Secure          NA                0.0414505   -0.0964327   0.1619940
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   Food Secure          NA                0.1429577    0.0672288   0.2125384
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   Food Secure          NA                0.0535268   -0.0503501   0.1471305

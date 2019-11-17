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

**Outcome Variable:** stunted

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

agecat      studyid                 country        hfoodsec                stunted   n_cell       n
----------  ----------------------  -------------  ---------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      121     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       23     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       19     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     172
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0        3      28
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        1      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0       20      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        4      28
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   0       28      37
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   1        6      37
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        1      37
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0      37
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 0        1      37
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1      37
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   0       10      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0        1      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 0        3      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   0       20      91
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   1        4      91
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       21      91
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        2      91
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 0       39      91
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 1        5      91
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0       41      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        4      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       31      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        3      88
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       78     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       12     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      404     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       74     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       29     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       11     608
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      387     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       52     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      175     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       34     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       69     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       15     732
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      401     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       76     672
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       86     672
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       20     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       69     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       20     672
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     4894   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     2057   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     3303   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     1574   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1696   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      840   14364
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0      978    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      455    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0      722    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      296    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      253    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      106    2810
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      129     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       31     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       25     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        4     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      153     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       37     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       91     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        3     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        4     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       19     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        8     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       22     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        6     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       41     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1       15     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      104     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       25     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       15     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        3     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       65     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1       16     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       60     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       20     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      308     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      109     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       25     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       15     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      342     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       85     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      158     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       46     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       65     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       19     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      314     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       82     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       54     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       22     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       60     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       14     546
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     6526   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     1889   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     4125   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     1477   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1918   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      856   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     1828    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      614    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1276    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      453    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      477    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      145    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0       87     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       74     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        1     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        3     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       12     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1       17     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      112     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        3     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      107     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       83     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0        9     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        8     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       76     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1       18     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       12     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        3     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       10     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        9     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       14     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1       12     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       20     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        7     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       33     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1       21     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0       88     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       41     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       12     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        6     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       49     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1       32     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       45     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       23     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      131     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      197     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        9     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       24     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      254     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       80     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0       91     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       33     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       37     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       19     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      202     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      140     478
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       29     478
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       38     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       36     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     478
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     2152    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     1723    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     1368    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     1393    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0      677    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      901    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     1435    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      964    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1007    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      698    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      381    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      228    4713


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/813217be-0886-4051-9cab-9d1a3469dfbb/72aff1c7-82a5-4ed8-b8a1-5403f919bb48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/813217be-0886-4051-9cab-9d1a3469dfbb/72aff1c7-82a5-4ed8-b8a1-5403f919bb48/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/813217be-0886-4051-9cab-9d1a3469dfbb/72aff1c7-82a5-4ed8-b8a1-5403f919bb48/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/813217be-0886-4051-9cab-9d1a3469dfbb/72aff1c7-82a5-4ed8-b8a1-5403f919bb48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1306905   0.0607158   0.2006651
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.1549237   0.1224063   0.1874412
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.2810902   0.1377052   0.4244751
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1180385   0.0877551   0.1483219
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1647020   0.1142530   0.2151510
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.1800814   0.0970304   0.2631325
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.1617266   0.1279034   0.1955498
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2128819   0.1193202   0.3064436
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2438760   0.1473419   0.3404101
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.3005041   0.2884722   0.3125360
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.3153170   0.3003497   0.3302843
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3459504   0.3245298   0.3673710
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3172622   0.2891778   0.3453465
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2901097   0.2566534   0.3235660
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2973110   0.2482154   0.3464065
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.2962963   0.1232791   0.4693135
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2142857   0.0616124   0.3669590
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2678571   0.1513457   0.3843686
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2746080   0.1817357   0.3674802
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.2617964   0.2195734   0.3040195
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4215190   0.2652515   0.5777864
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1992578   0.1613173   0.2371982
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2273162   0.1697001   0.2849322
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2299719   0.1387866   0.3211573
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2076856   0.1675925   0.2477787
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2924111   0.1870527   0.3977694
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1748627   0.0908703   0.2588550
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2353782   0.2246449   0.2461116
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2571186   0.2443109   0.2699264
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3039494   0.2825915   0.3253073
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2514521   0.2315872   0.2713169
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2619627   0.2382736   0.2856517
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2328971   0.1967371   0.2690570
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.4615385   0.2690159   0.6540610
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2592593   0.0931838   0.4253347
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.3888889   0.2582528   0.5195249
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3178295   0.2373006   0.3983583
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3333333   0.1150804   0.5515863
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.3950617   0.2883657   0.5017577
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3382353   0.2256552   0.4508154
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6006098   0.5475442   0.6536753
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5751441   0.8794013
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2410890   0.1949518   0.2872262
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2674145   0.1881280   0.3467010
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3322879   0.2066008   0.4579749
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.4111100   0.3586424   0.4635777
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.5544790   0.4271590   0.6817991
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.4935339   0.3739821   0.6130857
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4680038   0.4493244   0.4866831
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4925587   0.4703806   0.5147368
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5563175   0.5275076   0.5851274
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.4024175   0.3788979   0.4259371
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.4093535   0.3825381   0.4361688
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3724343   0.3299578   0.4149108


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1726190   0.1440245   0.2012136
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3112643   0.3026111   0.3199174
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3049822   0.2848489   0.3251155
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2612613   0.1791629   0.3433597
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2161172   0.1815615   0.2506729
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514442   0.2432971   0.2595914
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2528688   0.2386164   0.2671211
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3738318   0.2817277   0.4659358
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3464912   0.2845889   0.4083936
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4414226   0.3968613   0.4859839
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4890431   0.4756182   0.5024680
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4010185   0.3840244   0.4180125


### Parameter: RR


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.1854249   0.6669056   2.107093
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       2.1508083   1.0265611   4.506285
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.3953242   0.9355921   2.080960
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.5256161   0.9001411   2.585710
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3163075   0.8089909   2.141761
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.5079523   0.9632917   2.360573
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0492937   0.9878626   1.114545
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1512336   1.0701104   1.238507
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9144163   0.7906918   1.057501
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9371145   0.7775616   1.129407
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7232143   0.2878706   1.816924
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9040179   0.4364671   1.872417
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       0.9533462   0.6552345   1.387089
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.5349845   0.9285885   2.537375
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1408145   0.8306480   1.566798
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1541428   0.7432871   1.792101
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.4079506   0.9354884   2.119027
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       0.8419585   0.5011959   1.414405
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0923636   1.0265598   1.162386
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.2913234   1.1891529   1.402272
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0417997   0.9233477   1.175447
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9262086   0.7793948   1.100677
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5617284   0.2615430   1.206451
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8425926   0.4931961   1.439513
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.0487805   0.5197306   2.116366
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.2429991   0.8583073   1.800109
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.7757158   1.2583875   2.505720
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       2.1501976   1.4512752   3.185716
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1091943   0.7799322   1.577460
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.3782790   0.9019032   2.106271
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3487364   1.0374344   1.753451
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.2004911   0.9133576   1.577891
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0524673   0.9951767   1.113056
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1887030   1.1172020   1.264780
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0172357   0.9339622   1.107934
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9254923   0.8156160   1.050171


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0288490   -0.0367070   0.0944050
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0199397   -0.0011344   0.0410137
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0108925   -0.0095414   0.0313263
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0107602    0.0018454   0.0196750
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0122800   -0.0319803   0.0074204
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0064515   -0.0927114   0.0798083
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0105324   -0.0142767   0.0353415
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0084316   -0.0135899   0.0304531
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0160660    0.0083732   0.0237587
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0014167   -0.0125393   0.0153728
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0286618   -0.0259150   0.0832385
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.2305293    0.1263288   0.3347297
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0157203   -0.0127079   0.0441486
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0303126    0.0014816   0.0591435
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0210393    0.0082209   0.0338578
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0013990   -0.0170961   0.0142980


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1808267   -0.3513931   0.5034421
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1445132   -0.0208630   0.2830990
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0631011   -0.0626752   0.1739907
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0345694    0.0055446   0.0627470
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0402645   -0.1069823   0.0224321
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0240589   -0.4021739   0.2520924
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0502046   -0.0756030   0.1612970
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0390140   -0.0683664   0.1356018
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0638948    0.0328995   0.0938968
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0056026   -0.0511469   0.0592882
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0827200   -0.0891025   0.2274349
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.4053158    0.1884019   0.5642557
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0612141   -0.0561743   0.1655554
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0686702    0.0008029   0.1319279
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0430214    0.0164051   0.0689174
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0034887   -0.0434002   0.0348961

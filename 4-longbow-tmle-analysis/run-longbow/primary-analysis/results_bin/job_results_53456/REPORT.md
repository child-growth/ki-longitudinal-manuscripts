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

**Outcome Variable:** sstunted

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

agecat      studyid                 country        hfoodsec                sstunted   n_cell       n
----------  ----------------------  -------------  ---------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      140     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        4     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        3     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        1     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       23     172
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        1     172
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0        4      28
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0       22      28
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        2      28
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    0       32      37
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    1        2      37
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        1      37
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0      37
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  0        2      37
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  1        0      37
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    0       10      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0        1      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  0        3      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        0      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    0       24      91
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    1        0      91
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       23      91
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        0      91
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  0       44      91
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  1        0      91
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0       45      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        0      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0        9      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       33      88
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        1      88
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       89     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        1     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      462     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       16     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       38     608
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        2     608
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      437     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1        2     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      205     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        4     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       80     732
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        4     732
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      460     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       17     672
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0      101     672
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        5     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       81     672
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        8     672
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     6342   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      609   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     4381   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      496   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2258   14364
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      278   14364
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     1304    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      129    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0      941    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       77    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      332    2810
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       27    2810
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      155     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        5     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       29     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        0     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                    0      183     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                    1        7     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                  0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                  1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                    0       94     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                    0       24     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                    1        3     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       27     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        1     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  0       53     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  1        3     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      127     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        2     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       78     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        3     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       77     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        3     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      391     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       26     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       34     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        6     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      416     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       11     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      196     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        8     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       80     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        4     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      386     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       10     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       71     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        5     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       71     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        3     546
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     7979   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      436   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     5248   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      354   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2545   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      229   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2308    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      134    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1632    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       97    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      585    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       37    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      142     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1       19     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        2     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        2     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       23     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        6     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0      115     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        0     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    0      165     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    1       25     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        5     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                  0       14     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                  1        3     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                    0       91     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                    1        3     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       16     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        3     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                    0       23     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                    1        3     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       25     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        2     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                  0       50     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                  1        4     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      116     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1       13     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       73     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        8     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       60     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        8     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      257     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       71     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       17     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1       16     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      313     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       21     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       51     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        5     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      309     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       33     478
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       59     478
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        8     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       59     478
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1       10     478
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     3359    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      516    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     2331    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      430    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     1240    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      338    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2165    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      234    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1542    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1      163    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      558    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       51    4713


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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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
![](/tmp/4504ae84-d086-453c-b52d-94b109d12258/8ae08140-5826-4c2a-9eb2-1fdc52727360/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4504ae84-d086-453c-b52d-94b109d12258/8ae08140-5826-4c2a-9eb2-1fdc52727360/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4504ae84-d086-453c-b52d-94b109d12258/8ae08140-5826-4c2a-9eb2-1fdc52727360/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4504ae84-d086-453c-b52d-94b109d12258/8ae08140-5826-4c2a-9eb2-1fdc52727360/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0356394   0.0189901   0.0522888
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.0471698   0.0067813   0.0875584
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.0898876   0.0304209   0.1493544
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0875817   0.0802818   0.0948816
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1000321   0.0903273   0.1097369
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1119673   0.0976241   0.1263106
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0898061   0.0719124   0.1076999
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0751447   0.0565569   0.0937325
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0803886   0.0566327   0.1041444
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0537896   0.0487090   0.0588703
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0627507   0.0557112   0.0697903
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0794418   0.0679087   0.0909748
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0546617   0.0456966   0.0636267
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0566365   0.0444335   0.0688395
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0593088   0.0408734   0.0777442
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1176471   0.0409794   0.1943147
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2164634   0.1718424   0.2610845
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4848485   0.3141348   0.6555622
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0628743   0.0368167   0.0889318
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0806452   0.0326728   0.1286175
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0964912   0.0651656   0.1278169
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1194030   0.0416778   0.1971281
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1449275   0.0617789   0.2280762
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1391625   0.1259586   0.1523665
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1518687   0.1367867   0.1669507
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1999236   0.1770003   0.2228469
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0977083   0.0838851   0.1115315
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0955914   0.0799308   0.1112519
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0829528   0.0581274   0.1077782


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0446429   0.0290169   0.0602688
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0962824   0.0908494   0.1017154
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0829181   0.0711515   0.0946848
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0606873   0.0568242   0.0645503
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0559149   0.0491257   0.0627040
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1066946   0.0789894   0.1343997
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1563185   0.1472145   0.1654224
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0950562   0.0854670   0.1046455


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.3235294   0.4990314   3.510260
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       2.5221414   1.1221261   5.668880
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1421577   1.0083232   1.293756
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2784333   1.0978147   1.488768
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8367432   0.6088434   1.149950
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8951344   0.6251830   1.281650
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1665955   1.0111735   1.345907
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4768971   1.2464610   1.749935
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0361285   0.7915090   1.356349
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0850162   0.7614550   1.546067
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.8399390   0.9288873   3.644549
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       4.1212121   1.9648904   8.643937
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.2826421   0.6212197   2.648291
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4200680   0.5579185   3.614494
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.2374491   0.5978826   2.561172
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.5019762   0.7769123   2.903716
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0913045   0.9549845   1.247084
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4366196   1.2429336   1.660487
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9783339   0.7897287   1.211982
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8489839   0.6094649   1.182634


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0090034   -0.0023034   0.0203103
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0087007    0.0031567   0.0142446
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0068880   -0.0184232   0.0046472
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0068976    0.0029928   0.0108025
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0012532   -0.0054074   0.0079138
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1037982    0.0292197   0.1783766
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0071647   -0.0096965   0.0240259
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0102033   -0.0083620   0.0287687
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0171560    0.0073678   0.0269441
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0026521   -0.0118945   0.0065903


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.2016771   -0.0837182   0.4119141
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0903664    0.0313134   0.1458194
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0830697   -0.2296702   0.0460533
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1136588    0.0476112   0.1751260
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0224125   -0.1039608   0.1343196
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4687307    0.0121611   0.7142782
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1022954   -0.1713644   0.3120215
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0956312   -0.0945510   0.2527686
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1097500    0.0446960   0.1703741
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0279003   -0.1296834   0.0647122

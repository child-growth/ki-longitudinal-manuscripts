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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      153     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        4     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        3     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        1     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       26     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        1     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0       90     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        4     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    0      150     170
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    1        4     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        2     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  0       13     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  1        1     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    0       76      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0        9      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       11      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        2      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    0       27     107
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    1        0     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       25     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        0     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  0       55     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  1        0     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      107     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       70     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        1     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0        4      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        0      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0       14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0        9      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0        3      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        1      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     5481   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      516   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     3913   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      422   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2037   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      236   12605
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0      367     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1       29     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0      280     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       29     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      108     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1        6     819
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
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  0       52     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  1        4     111
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
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      385     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       10     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       72     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        4     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       71     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        3     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     7979   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      436   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     5248   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      354   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2545   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      229   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2308    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      134    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1633    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       96    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      585    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       37    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      144     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1       17     194
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
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    0      166     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    1       24     212
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
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      117     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1       12     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       73     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        8     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       61     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        7     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      258     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       70     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       17     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1       16     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      314     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       20     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       51     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        5     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      316     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       33     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       61     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        8     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       60     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1       10     488
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     3359    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      516    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     2332    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      429    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     1240    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      338    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2173    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      226    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1549    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1      156    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      559    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       50    4713


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
![](/tmp/6d3dad72-e260-48c7-878c-6f1616218075/5a1424bc-3219-49be-b3de-860f3c85ab9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d3dad72-e260-48c7-878c-6f1616218075/5a1424bc-3219-49be-b3de-860f3c85ab9a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d3dad72-e260-48c7-878c-6f1616218075/5a1424bc-3219-49be-b3de-860f3c85ab9a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d3dad72-e260-48c7-878c-6f1616218075/5a1424bc-3219-49be-b3de-860f3c85ab9a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0857840   0.0781278   0.0934402
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0950421   0.0854964   0.1045878
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1058276   0.0911441   0.1205112
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0732323   0.0396415   0.1068232
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0938511   0.0574751   0.1302272
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0526316   0.0149521   0.0903111
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0540885   0.0489721   0.0592049
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0622582   0.0553060   0.0692103
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0791863   0.0679639   0.0904087
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0545932   0.0456219   0.0635646
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0557728   0.0436193   0.0679264
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0591532   0.0407500   0.0775563
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1029412   0.0306300   0.1752524
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2134146   0.1690228   0.2578065
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4848485   0.3141348   0.6555622
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0598802   0.0344101   0.0853504
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0806452   0.0326728   0.1286175
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0945559   0.0638263   0.1252854
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1159420   0.0403232   0.1915608
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1428571   0.0607989   0.2249154
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1389436   0.1259752   0.1519120
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1511254   0.1359658   0.1662849
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2004585   0.1778179   0.2230991
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0943694   0.0807847   0.1079540
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0918296   0.0765296   0.1071296
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0812165   0.0566951   0.1057379


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0931376   0.0875494   0.0987258
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0781441   0.0560930   0.1001951
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0606873   0.0568242   0.0645503
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0557062   0.0489296   0.0624829
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1045082   0.0773382   0.1316782
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1561967   0.1470936   0.1652999
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0916614   0.0822542   0.1010685


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1079230   0.9712260    1.263860
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2336520   1.0470487    1.453512
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.2815534   0.7048114    2.330239
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7186933   0.3087008    1.673206
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1510437   0.9976670    1.328000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4640147   1.2383927    1.730743
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0216070   0.7788215    1.340077
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0835252   0.7602108    1.544344
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0731707   0.9964838    4.313203
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       4.7099567   2.1466835   10.333937
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.3467742   0.6481889    2.798260
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4910714   0.5829558    3.813829
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.2261748   0.5916757    2.541096
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.5108225   0.7808936    2.923042
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0876741   0.9523079    1.242282
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4427330   1.2527814    1.661486
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9730867   0.7821275    1.210669
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8606235   0.6159863    1.202418


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0073536    0.0016099   0.0130973
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0049118   -0.0177090   0.0275325
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0065988    0.0026588   0.0105388
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0011130   -0.0055377   0.0077637
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1138420    0.0424616   0.1852225
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0082131   -0.0085443   0.0249706
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0099523   -0.0082644   0.0281690
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0172531    0.0077039   0.0268024
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0027080   -0.0118213   0.0064053


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0789542    0.0154220   0.1383869
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0628551   -0.2801939   0.3139785
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1087346    0.0420384   0.1707872
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0199797   -0.1067193   0.1321741
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.5251423    0.0701575   0.7574968
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1206159   -0.1598580   0.3332663
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0952301   -0.0953148   0.2526271
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1104577    0.0470420   0.1696533
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0295435   -0.1337232   0.0650629

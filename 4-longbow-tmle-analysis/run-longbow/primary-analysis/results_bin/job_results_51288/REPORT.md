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

**Outcome Variable:** swasted

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

agecat      studyid                 country        hfoodsec                swasted   n_cell       n
----------  ----------------------  -------------  ---------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      146     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        5     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       22     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        2     178
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0       91     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     102
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   0      146     167
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   1        5     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        1     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        1     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 1        0     167
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   0       74      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   1        1      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0        9      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       11      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        1      96
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   0       26     105
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   1        0     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       24     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 0       55     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 1        0     105
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      105     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        1     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       17     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       70     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     193
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        2      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        2      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0       13      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        1      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0        6      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0        3      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0      23
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     4917   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1       57   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     3442   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       60   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1788   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       25   10289
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0      332     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1        2     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0      248     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1        2     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0       95     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1        1     680
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      158     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       29     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        0     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      186     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1        4     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       94     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       27     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        0     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       28     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       56     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1        0     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      128     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       79     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        2     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       80     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      412     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        4     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       39     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1     536
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        0     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       84     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      389     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1        6     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        0     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       73     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        1     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8282   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      114   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5515   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       75   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2737   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       41   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2429    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       16    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1713    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       15    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      620    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1        2    4795
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       29     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        0     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      190     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        3     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        2     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       17     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        0     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       94     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       19     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       26     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        0     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       27     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        1     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       81     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       67     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        1     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      319     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        8     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       32     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      330     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        4     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       56     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      338     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       10     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       67     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        2     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       68     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        2     487
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     3699    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      158    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     2657    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       96    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1512    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       68    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2319    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       70    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1659    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       40    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      589    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       19    4696


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f87620c0-e944-4bad-a52d-6adfb29e63f9/5742390b-dcb5-4ad1-99c6-9deb62d1a071/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f87620c0-e944-4bad-a52d-6adfb29e63f9/5742390b-dcb5-4ad1-99c6-9deb62d1a071/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f87620c0-e944-4bad-a52d-6adfb29e63f9/5742390b-dcb5-4ad1-99c6-9deb62d1a071/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f87620c0-e944-4bad-a52d-6adfb29e63f9/5742390b-dcb5-4ad1-99c6-9deb62d1a071/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0114129   0.0074196   0.0154062
Birth       kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0169734   0.0119759   0.0219708
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0138220   0.0090948   0.0185493
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0134913   0.0104729   0.0165097
6 months    kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0125113   0.0095529   0.0154697
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0147859   0.0093410   0.0202308
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0397746   0.0330924   0.0464567
24 months   kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0339711   0.0261831   0.0417590
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0385632   0.0294158   0.0477106
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure            NA                0.0291605   0.0214084   0.0369125
24 months   kiGH5241-JiVitA-4   BANGLADESH   Mildly Food Insecure   NA                0.0238935   0.0152342   0.0325529
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Insecure          NA                0.0308737   0.0178062   0.0439412


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0138011   0.0109279   0.0166744
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0137199   0.0116432   0.0157966
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0393162   0.0348276   0.0438049
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0274702   0.0222302   0.0327101


### Parameter: RR


agecat      studyid             country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       1.4872077   0.9596773   2.304719
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.2110889   0.7477192   1.961614
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.9273637   0.6794987   1.265644
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.0959566   0.7128080   1.685055
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.8540898   0.6409144   1.138170
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       0.9695447   0.7223362   1.301357
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   Mildly Food Insecure   Food Secure       0.8193815   0.5167825   1.299165
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Insecure          Food Secure       1.0587523   0.6536121   1.715018


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0023882   -0.0003064   0.0050829
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0002286   -0.0017810   0.0022381
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                -0.0004583   -0.0052876   0.0043709
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure          NA                -0.0016903   -0.0069191   0.0035385


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.1730463   -0.0526076   0.3503254
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0166602   -0.1415737   0.1529613
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                -0.0116574   -0.1422236   0.1039839
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure          NA                -0.0615313   -0.2690832   0.1120765

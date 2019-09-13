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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      133     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       24     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       23     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        4     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       10     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        1     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0       84     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1       10     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   0      133     170
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   1       21     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        2     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 0       11     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   0       70      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   1        6      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0        9      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       10      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        3      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   0       22     107
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   1        5     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       22     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        3     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 0       50     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 1        5     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0       94     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       13     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       65     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0       21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        0      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0       14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        0      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0        5      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        4      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0        3      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        1      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     4233   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     1764   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     2972   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     1363   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1527   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      746   12605
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0      276     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      120     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0      214     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       95     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0       82     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       32     819
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      128     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       32     193
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
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      152     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       38     212
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
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      314     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       81     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       56     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       20     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       60     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       14     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     6526   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     1889   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     4125   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     1477   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1918   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      856   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     1828    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      614    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1277    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      452    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      477    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      145    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0       90     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       71     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        1     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        3     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       12     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1       17     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      108     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       82     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       10     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        7     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       77     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1       17     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       13     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        2     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0        9     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1       10     128
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
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       46     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       22     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      136     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      192     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0        9     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       24     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      254     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       80     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0       91     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       33     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       37     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       19     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      206     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      143     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       30     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       39     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       38     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       32     488
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     2153    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1     1722    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     1370    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1     1391    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0      677    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      901    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     1455    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      944    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1021    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      684    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      388    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1      221    4713


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
![](/tmp/3cf6d79d-6575-4238-a1e1-27cda20af6a2/b1515d20-c1cf-4fa8-9f40-7eda3f108ab8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3cf6d79d-6575-4238-a1e1-27cda20af6a2/b1515d20-c1cf-4fa8-9f40-7eda3f108ab8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3cf6d79d-6575-4238-a1e1-27cda20af6a2/b1515d20-c1cf-4fa8-9f40-7eda3f108ab8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3cf6d79d-6575-4238-a1e1-27cda20af6a2/b1515d20-c1cf-4fa8-9f40-7eda3f108ab8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2971876   0.2843159   0.3100593
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.3079152   0.2923750   0.3234554
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3414696   0.3195074   0.3634317
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3014678   0.2478295   0.3551060
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3106894   0.2525095   0.3688693
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2760074   0.1910736   0.3609411
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.2962963   0.1232791   0.4693135
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2142857   0.0616124   0.3669590
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.2678571   0.1513457   0.3843686
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.2531130   0.1568839   0.3493422
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.2608973   0.2186679   0.3031267
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.3773679   0.2233968   0.5313391
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2019116   0.1639751   0.2398481
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2366325   0.1792776   0.2939874
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2444107   0.1562310   0.3325904
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2044474   0.1645434   0.2443514
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.2633310   0.1637120   0.3629499
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.1856289   0.0947076   0.2765501
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2346100   0.2239026   0.2453174
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2560263   0.2431888   0.2688639
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.3044354   0.2834801   0.3253907
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2513738   0.2315078   0.2712398
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2616781   0.2380307   0.2853255
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.2322395   0.1963677   0.2681113
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.4615385   0.2690159   0.6540610
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.2592593   0.0931838   0.4253347
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.3888889   0.2582528   0.5195249
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3178295   0.2373006   0.3983583
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3333333   0.1150804   0.5515863
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.3950617   0.2883657   0.5017577
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3235294   0.2122072   0.4348516
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.5853659   0.5319876   0.6387441
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5751441   0.8794013
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2404348   0.1943489   0.2865207
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2658936   0.1862249   0.3455623
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3359324   0.2101894   0.4616754
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.4176127   0.3651517   0.4700737
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.5774876   0.4427211   0.7122541
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.4001582   0.2811797   0.5191368
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.4662275   0.4475019   0.4849532
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4918825   0.4696107   0.5141543
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5579633   0.5289053   0.5870212
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3934843   0.3701617   0.4168068
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.4011168   0.3739326   0.4283010
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3630347   0.3208857   0.4051836


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3072590   0.2982359   0.3162822
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3015873   0.2659035   0.3372711
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.2612613   0.1791629   0.3433597
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2110092   0.1767217   0.2452966
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2514442   0.2432971   0.2595914
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2526601   0.2384064   0.2669139
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.3738318   0.2817277   0.4659358
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3464912   0.2845889   0.4083936
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4385246   0.3944543   0.4825949
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.4886779   0.4752340   0.5021218
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3923191   0.3753084   0.4093298


### Parameter: RR


agecat      studyid                 country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0360972   0.9711894   1.105343
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1490036   1.0634658   1.241421
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0305891   0.7964596   1.333544
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9155451   0.6428322   1.303953
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.7232143   0.2878706   1.816924
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9040179   0.4364671   1.872417
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.0307541   0.6818124   1.558279
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.4909067   0.8536360   2.603924
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1719611   0.8616372   1.594050
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.2104837   0.8062902   1.817300
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.2880131   0.8410196   1.972579
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       0.9079541   0.5360307   1.537935
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0912848   1.0249949   1.161862
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.2976231   1.1963688   1.407447
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0409919   0.9228054   1.174315
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9238813   0.7779307   1.097214
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5617284   0.2615430   1.206451
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8425926   0.4931961   1.439513
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.0487805   0.5197306   2.116366
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.2429991   0.8583073   1.800109
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.8093126   1.2674186   2.582897
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       2.2479339   1.5028032   3.362521
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1058866   0.7749495   1.578148
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.3971873   0.9172942   2.128142
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3828306   1.0611478   1.802030
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       0.9582042   0.6943377   1.322347
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0550267   0.9969992   1.116432
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1967617   1.1243479   1.273839
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0193972   0.9339856   1.112620
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9226154   0.8113775   1.049104


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0100715    0.0005674   0.0195755
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0001195   -0.0366174   0.0368565
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0150434   -0.0740784   0.1041652
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0078786   -0.0170531   0.0328104
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0065618   -0.0150134   0.0281370
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0168342    0.0091395   0.0245289
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0012863   -0.0126405   0.0152131
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0286618   -0.0259150   0.0832385
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.2312491    0.1279008   0.3345975
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0163746   -0.0120943   0.0448434
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0209119   -0.0082979   0.0501217
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0224503    0.0095603   0.0353403
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0011652   -0.0168251   0.0144947


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0327784    0.0013665   0.0632023
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0003963   -0.1291538   0.1150828
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0560993   -0.3422615   0.3362333
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0375548   -0.0887693   0.1492222
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0310970   -0.0766942   0.1280969
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0669500    0.0359570   0.0969466
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0050912   -0.0515839   0.0587118
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0827200   -0.0891025   0.2274349
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.4168314    0.1952617   0.5773961
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0637616   -0.0538033   0.1682106
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0476870   -0.0214056   0.1121058
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0459410    0.0191505   0.0719997
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0029700   -0.0436890   0.0361604

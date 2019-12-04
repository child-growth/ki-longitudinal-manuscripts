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

agecat        studyid                 country        hfoodsec                ever_wasted   n_cell       n
------------  ----------------------  -------------  ---------------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      105     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       56     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       19     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       10     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      103     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       12     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       97     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       93     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        4     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       10     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        7     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       64     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       30     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       10     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        5     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       10     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        9     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       22     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        5     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       49     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      100     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       32     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       64     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       18     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       56     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       38     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      247     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      241     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       23     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       19     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      308     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      145     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      149     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       70     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       51     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       35     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      188     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      283     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       55     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       50     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       28     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       59     663
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     6332   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2364   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4087   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1697   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1924   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      971   17375
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1896    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      853    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1333    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      615    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      494    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      208    5399
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      124     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       37     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       22     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        7     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      106     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        9     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0      128     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       62     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        3     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0       74     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       20     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       11     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        4     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       15     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0       25     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0       53     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      119     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       13     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       18     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       71     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       11     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       67     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       27     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      303     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      183     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       30     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       12     622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      339     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      114     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      165     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       54     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       59     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       27     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      276     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      195     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       81     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       24     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       57     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       30     663
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     7325   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1331   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4801   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      945   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     2338   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      541   17281
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     2315    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      263    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1595    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      217    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      600    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       69    5059
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      131     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       30     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       24     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        5     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      111     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        4     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0      137     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       53     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        4     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       77     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       17     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       13     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       13     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        6     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       23     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       28     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       51     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        5     111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      107     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       23     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       73     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       62     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       19     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      295     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      126     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       26     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       14     542
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      382     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       56     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      179     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       28     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       73     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       12     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      233     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      181     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       39     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       42     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       31     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       47     573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     7329   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1304   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4790   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      953   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     2290   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      569   17235
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     2065    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      678    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1463    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      481    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      526    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      173    5386


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/dcefad6f-9833-4e49-8e05-2d8df90d175f/8fdff534-0bd0-45f1-bfa2-250350692ed5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dcefad6f-9833-4e49-8e05-2d8df90d175f/8fdff534-0bd0-45f1-bfa2-250350692ed5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dcefad6f-9833-4e49-8e05-2d8df90d175f/8fdff534-0bd0-45f1-bfa2-250350692ed5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dcefad6f-9833-4e49-8e05-2d8df90d175f/8fdff534-0bd0-45f1-bfa2-250350692ed5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        Food Secure            NA                0.3191489   0.2245448   0.4137531
0-24 months   ki0047075b-MAL-ED       NEPAL        Mildly Food Insecure   NA                0.3333333   0.0938367   0.5728299
0-24 months   ki0047075b-MAL-ED       NEPAL        Food Insecure          NA                0.4736842   0.2482904   0.6990781
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.4006455   0.3017102   0.4995809
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.4944482   0.4500297   0.5388667
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4630861   0.3064268   0.6197454
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.3201752   0.2771237   0.3632267
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3199265   0.2573811   0.3824720
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4045400   0.2974201   0.5116600
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5942479   0.5485969   0.6398990
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4652490   0.3596039   0.5708940
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6989947   0.5995814   0.7984080
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2752403   0.2640500   0.2864305
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2913846   0.2774781   0.3052911
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3200007   0.2998547   0.3401467
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.3096657   0.2898694   0.3294621
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.3170595   0.2930609   0.3410581
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2940938   0.2528724   0.3353151
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2866159   0.1939534   0.3792784
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3780779   0.3349429   0.4212129
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2917811   0.1486499   0.4349123
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2511198   0.2110585   0.2911812
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2456195   0.1881713   0.3030677
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3136273   0.2135719   0.4136827
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.4096563   0.3646508   0.4546618
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2375400   0.1473201   0.3277600
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.3263989   0.2204894   0.4323084
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1536232   0.1445524   0.1626940
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1634735   0.1525782   0.1743688
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1778577   0.1617132   0.1940022
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1014843   0.0883188   0.1146497
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1204226   0.1025224   0.1383228
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1033870   0.0770809   0.1296931
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2345764   0.1408432   0.3283095
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2986873   0.2549241   0.3424506
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3475348   0.1895816   0.5054881
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.1285782   0.0971459   0.1600105
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1380641   0.0906850   0.1854432
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1376610   0.0650265   0.2102956
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.4408800   0.3918348   0.4899252
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5122181   0.3835431   0.6408931
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6263842   0.5082371   0.7445314
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1542568   0.1458167   0.1626968
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1639344   0.1528334   0.1750353
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1874679   0.1710505   0.2038852
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2474004   0.2284715   0.2663294
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2474042   0.2252854   0.2695229
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2457130   0.2063858   0.2850402


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.3437500   0.2611458   0.4263542
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5912519   0.5538035   0.6287003
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2896115   0.2819717   0.2972513
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.3104279   0.2959885   0.3248672
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3755656   0.3386759   0.4124553
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1630114   0.1568185   0.1692043
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1085195   0.0986291   0.1184098
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4712042   0.4302971   0.5121113
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1639687   0.1578505   0.1700868
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2473078   0.2336663   0.2609494


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL        Mildly Food Insecure   Food Secure       1.0444444   0.4801047   2.2721381
0-24 months   ki0047075b-MAL-ED       NEPAL        Food Insecure          Food Secure       1.4842105   0.8472771   2.5999533
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2341288   0.9488931   1.6051059
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.1558500   0.7601175   1.7576087
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9992233   0.7880469   1.2669896
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2634959   0.9387845   1.7005200
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.7829207   0.6161371   0.9948512
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.1762678   1.0007649   1.3825484
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0586556   0.9937338   1.1278189
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1626232   1.0819211   1.2493449
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0238765   0.9296230   1.1276863
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9497136   0.8131942   1.1091519
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3191099   0.9363188   1.8583958
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.0180211   0.5655615   1.8324567
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9780967   0.7367497   1.2985052
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2489147   0.8742766   1.7840898
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.5798520   0.3905532   0.8609028
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.7967628   0.5656464   1.1223106
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0641196   0.9731593   1.1635818
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1577523   1.0446393   1.2831131
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1866134   0.9726338   1.4476686
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0187491   0.7634844   1.3593596
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2733054   0.8319512   1.9488002
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.4815425   0.8087836   2.7139130
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0737752   0.7043991   1.6368466
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0706406   0.5984149   1.9155127
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1618084   0.8827453   1.5290920
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4207591   1.1411926   1.7688130
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0627371   0.9747465   1.1586706
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2152976   1.0987976   1.3441496
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0000151   0.8916388   1.1215643
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9931791   0.8309970   1.1870138


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       NEPAL        Food Secure          NA                 0.0246011   -0.0266646    0.0758668
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0769186   -0.0146080    0.1684451
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0096401   -0.0180601    0.0373403
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0029960   -0.0289114    0.0229193
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0143713    0.0063549    0.0223876
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0007621   -0.0129876    0.0145118
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0702973   -0.0160470    0.1566415
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0061361   -0.0195721    0.0318443
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0340907   -0.0580441   -0.0101373
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0093882    0.0028965    0.0158798
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0070352   -0.0028905    0.0169609
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0587816   -0.0288275    0.1463906
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0029286   -0.0173347    0.0231920
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0303242    0.0030301    0.0576183
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0097119    0.0034326    0.0159912
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0000926   -0.0130211    0.0128359


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       NEPAL        Food Secure          NA                 0.0715667   -0.0901841    0.2093186
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1610644   -0.0545254    0.3325785
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0292288   -0.0584935    0.1096811
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0050673   -0.0498679    0.0378216
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0496225    0.0214755    0.0769599
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0024551   -0.0428341    0.0457774
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1969590   -0.0853128    0.4058165
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0238521   -0.0813695    0.1188353
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0907716   -0.1566270   -0.0286659
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0575920    0.0168020    0.0966899
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0648291   -0.0307033    0.1515069
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2003749   -0.1613014    0.4494106
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0222699   -0.1445674    0.1647883
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0643547    0.0043482    0.1207447
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0592302    0.0202468    0.0966625
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0003744   -0.0540411    0.0505598

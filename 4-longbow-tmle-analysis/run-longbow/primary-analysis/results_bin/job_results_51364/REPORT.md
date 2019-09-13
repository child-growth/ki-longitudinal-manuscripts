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
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      104     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       11     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       98     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       92     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        4     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0       10     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        7     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0       65     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       29     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       11     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        4     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       10     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        9     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0       22     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        5     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0       49     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      101     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       31     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       65     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       17     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       56     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       38     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      247     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      241     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       23     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       19     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      308     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      145     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      148     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       71     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       51     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       35     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      181     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      242     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       35     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       47     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       24     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       55     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     6331   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     2365   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4086   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1     1699   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     1924   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      971   17376
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0     1896    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      853    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0     1333    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      615    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      494    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1      208    5399
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0      125     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       36     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       22     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        7     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0      107     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        8     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0      130     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       60     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        3     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0       13     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0       75     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       19     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0       15     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0       25     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0       53     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      120     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       12     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       18     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       72     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       67     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       27     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      303     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      183     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       30     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       12     622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0      339     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      114     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      164     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       55     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       59     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       27     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      290     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      133     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       65     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       17     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       58     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       21     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     7323   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1333   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     4800   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      947   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0     2338   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      541   17282
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
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0       23     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6     194
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0      108     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       22     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0       73     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       62     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       19     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      294     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      126     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       26     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1       14     541
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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







# Results Detail

## Results Plots
![](/tmp/4eb4e977-4180-4d58-84e7-ffb5549882f6/9ceb6d7a-4967-4836-a032-2acb314a20e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4eb4e977-4180-4d58-84e7-ffb5549882f6/9ceb6d7a-4967-4836-a032-2acb314a20e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4eb4e977-4180-4d58-84e7-ffb5549882f6/9ceb6d7a-4967-4836-a032-2acb314a20e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4eb4e977-4180-4d58-84e7-ffb5549882f6/9ceb6d7a-4967-4836-a032-2acb314a20e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.3978127   0.2984669   0.4971585
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.4942049   0.4497131   0.5386966
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4582440   0.2996131   0.6168749
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.3195198   0.2765273   0.3625124
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3249248   0.2624484   0.3874013
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4198612   0.3141468   0.5255756
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5732615   0.5254533   0.6210696
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5632813   0.4392032   0.6873594
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.7191774   0.6185110   0.8198439
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2753388   0.2641995   0.2864780
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2905083   0.2765246   0.3044920
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3190313   0.2992489   0.3388137
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.3098737   0.2900535   0.3296939
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.3168397   0.2928839   0.3407956
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2929180   0.2511668   0.3346692
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2713757   0.1802483   0.3625031
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3785505   0.3353767   0.4217244
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2935086   0.1471867   0.4398306
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2510191   0.2109370   0.2911012
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2485658   0.1906520   0.3064796
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3108000   0.2119871   0.4096129
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3156705   0.2712630   0.3600780
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2069349   0.1181890   0.2956809
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2629805   0.1616589   0.3643021
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1540200   0.1449545   0.1630855
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1631955   0.1523723   0.1740187
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1792872   0.1629692   0.1956052
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1018151   0.0886414   0.1149888
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1198735   0.1018943   0.1378527
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1033358   0.0769150   0.1297566
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.2338543   0.1388012   0.3289075
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2999422   0.2560917   0.3437926
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.3446516   0.1882279   0.5010753
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.1275129   0.0960427   0.1589832
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1378784   0.0905160   0.1852407
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1377027   0.0643922   0.2110132
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.4375132   0.3885771   0.4864493
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5184088   0.3973709   0.6394468
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.6412665   0.5312124   0.7513206
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1537548   0.1452877   0.1622218
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1642709   0.1528695   0.1756723
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1895014   0.1729536   0.2060493
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2470221   0.2280188   0.2660253
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2478703   0.2258436   0.2698970
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2464284   0.2068120   0.2860448


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5890411   0.5491031   0.6289790
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2897675   0.2821419   0.2973931
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.3104279   0.2959885   0.3248672
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2928082   0.2558702   0.3297463
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1632334   0.1570476   0.1694192
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1085195   0.0986291   0.1184098
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4712042   0.4302971   0.5121113
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1639687   0.1578505   0.1700868
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2473078   0.2336663   0.2609494


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2423054   0.9526374   1.620052
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.1519090   0.7514602   1.765754
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0169160   0.8040967   1.286062
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3140378   0.9874393   1.748660
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9825906   0.7763931   1.243551
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.2545365   1.0659029   1.476553
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0550942   0.9902688   1.124163
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1586866   1.0792057   1.244021
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0224802   0.9283113   1.126202
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9452819   0.8075078   1.106562
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3949316   0.9783419   1.988910
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.0815583   0.5934902   1.970999
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9902268   0.7464206   1.313668
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2381529   0.8674876   1.767198
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.6555410   0.4171746   1.030106
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8330855   0.5525132   1.256136
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0595734   0.9693954   1.158140
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1640516   1.0498996   1.290615
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1773648   0.9646931   1.436921
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0149362   0.7601290   1.355159
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2826024   0.8324769   1.976114
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.4737874   0.8014014   2.710314
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0812892   0.7085609   1.650086
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0799115   0.6005102   1.942030
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.1848986   0.9144753   1.535290
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4657077   1.1940164   1.799221
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0683953   0.9784839   1.166568
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2324914   1.1146040   1.362847
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0034338   0.8946612   1.125431
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9975967   0.8340152   1.193263


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0797514   -0.0121807    0.1716835
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0116147   -0.0160703    0.0392997
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0157796   -0.0097167    0.0412760
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0144287    0.0064627    0.0223948
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0005541   -0.0132044    0.0143127
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0855375    0.0005899    0.1704850
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0075561   -0.0182183    0.0333305
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0228623   -0.0453035   -0.0004210
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0092134    0.0027705    0.0156563
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0067044   -0.0032017    0.0166105
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0600458   -0.0287906    0.1488823
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0039939   -0.0162573    0.0242451
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0336910    0.0066407    0.0607412
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0102139    0.0039290    0.0164988
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0002858   -0.0126661    0.0132377


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1669962   -0.0498932    0.3390801
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0350755   -0.0522544    0.1151577
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0267887   -0.0175503    0.0691956
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0497942    0.0218418    0.0769478
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0017851   -0.0435337    0.0451358
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2396591   -0.0398556    0.4440398
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0292220   -0.0757482    0.1239494
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0780793   -0.1575270   -0.0040846
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0564433    0.0160080    0.0952169
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0617804   -0.0335726    0.1483367
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2043069   -0.1632093    0.4557063
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0303704   -0.1365033    0.1727420
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0714997    0.0119561    0.1274550
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0622918    0.0232595    0.0997643
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0011556   -0.0526149    0.0521793

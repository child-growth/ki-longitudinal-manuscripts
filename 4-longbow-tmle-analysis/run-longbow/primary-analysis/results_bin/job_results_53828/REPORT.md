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

**Outcome Variable:** ever_co

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

agecat        studyid                 country        hfoodsec                ever_co   n_cell       n
------------  ----------------------  -------------  ---------------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      135     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       26     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       24     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      112     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        3     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      143     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       47     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       86     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        8     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       13     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        2     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      118     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       14     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       81     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       13     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      376     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      112     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       30     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       12     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      414     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       39     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      199     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       20     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       74     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       12     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      339     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      132     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       77     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       28     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       54     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     663
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     7874   17364
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      819   17364
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5137   17364
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      645   17364
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2449   17364
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      440   17364
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2309    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      440    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1614    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      333    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      603    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       99    5398
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      157     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        4     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       28     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        1     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      114     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        1     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      173     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       17     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       92     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        2     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       18     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        1     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       27     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       56     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1        1     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      128     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        4     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       82     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       88     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        6     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      451     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       35     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       38     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        4     622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      443     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       10     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      214     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        5     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       84     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        2     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      448     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       23     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       98     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        7     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       84     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        3     663
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8381   17260
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      266   17260
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5545   17260
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      197   17260
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2751   17260
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      120   17260
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2502    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       72    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1764    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       48    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      654    5055
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       15    5055
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      136     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       25     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       24     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      149     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       41     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       88     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        6     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       28     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       52     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      118     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       12     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       72     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        9     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      327     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       94     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       29     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       11     542
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      402     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       36     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      190     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       17     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       75     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       10     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      289     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      125     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       55     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       26     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       45     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8015   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      614   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5233   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      507   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2477   17217
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      371   17217
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2347    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      396    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1638    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      305    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      604    5385
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       95    5385


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/2da948e7-2d41-4db6-8b66-7aa3e69f3c8c/27c988f2-eb86-4b24-b152-2522422c2d5a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2da948e7-2d41-4db6-8b66-7aa3e69f3c8c/27c988f2-eb86-4b24-b152-2522422c2d5a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2da948e7-2d41-4db6-8b66-7aa3e69f3c8c/27c988f2-eb86-4b24-b152-2522422c2d5a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2da948e7-2d41-4db6-8b66-7aa3e69f3c8c/27c988f2-eb86-4b24-b152-2522422c2d5a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1396980   0.0686880   0.2107079
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2290747   0.1917194   0.2664300
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2788599   0.1371324   0.4205874
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0847771   0.0589731   0.1105811
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0938020   0.0548567   0.1327472
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1395038   0.0643510   0.2146566
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2819372   0.2412977   0.3225767
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2619633   0.1746046   0.3493220
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.3719829   0.2670625   0.4769034
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0977996   0.0909523   0.1046469
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1093762   0.1001417   0.1186107
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1412054   0.1269660   0.1554448
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1596300   0.1445720   0.1746880
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1713354   0.1525053   0.1901656
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1403538   0.1138739   0.1668336
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0310557   0.0270464   0.0350649
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0336016   0.0284003   0.0388029
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0405072   0.0327966   0.0482177
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0278187   0.0204855   0.0351520
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0267467   0.0169513   0.0365420
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0223710   0.0126822   0.0320597
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1111111   0.0426082   0.1796140
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2232779   0.1834613   0.2630945
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2750000   0.1364985   0.4135015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0815825   0.0557266   0.1074384
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0823944   0.0439681   0.1208208
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1129587   0.0439131   0.1820043
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3040455   0.2596302   0.3484608
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3093822   0.2042466   0.4145179
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4190684   0.3056637   0.5324732
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0746038   0.0686350   0.0805726
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0854743   0.0771522   0.0937963
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1200173   0.1068693   0.1331654
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1440741   0.1295296   0.1586185
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1577534   0.1400064   0.1755005
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1346091   0.1080147   0.1612035


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2911011   0.2564965   0.3257056
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1096522   0.1044077   0.1148966
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1615413   0.1501758   0.1729068
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0337775   0.0308809   0.0366741
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0267062   0.0213205   0.0320920
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3211169   0.2828539   0.3593799
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0866585   0.0819882   0.0913288
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1478180   0.1371861   0.1584499


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.6397854   0.9613293   2.797060
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.9961623   0.9726437   4.096736
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.1064536   0.6616593   1.850257
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.6455360   0.8857741   3.056974
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9291547   0.6465015   1.335385
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3193822   0.9613272   1.810798
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1183711   1.0034506   1.246453
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4438241   1.2769691   1.632481
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0733288   0.9351420   1.231936
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8792444   0.7167789   1.078534
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0819799   0.8889104   1.316984
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3043415   1.0310913   1.650006
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9614617   0.6121271   1.510158
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8041688   0.4868780   1.328233
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0095012   1.0576908   3.817841
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.4750000   1.1164457   5.486720
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0099521   0.5749185   1.774170
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3845950   0.6956540   2.755828
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0175525   0.7031593   1.472516
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3783084   1.0138449   1.873792
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1457088   1.0115143   1.297707
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6087292   1.4029579   1.844681
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0949467   0.9448928   1.268830
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9343048   0.7520562   1.160718


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0798533    0.0119894   0.1477171
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0088904   -0.0084020   0.0261828
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0091638   -0.0133654   0.0316931
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0118526    0.0064820   0.0172232
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0019113   -0.0080003   0.0118230
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0027219   -0.0002984   0.0057421
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0011125   -0.0063511   0.0041261
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0992210    0.0323673   0.1660747
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0047189   -0.0121426   0.0215803
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0170714   -0.0074797   0.0416226
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0120547    0.0072144   0.0168950
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0037440   -0.0059943   0.0134822


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3637113   -0.0295800   0.6067685
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0949145   -0.1090455   0.2613650
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0314799   -0.0490485   0.1058267
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1080925    0.0583769   0.1551832
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0118318   -0.0514732   0.0713255
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0805819   -0.0129952   0.1655146
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0416575   -0.2581951   0.1376136
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4717349    0.0481092   0.7068319
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0546790   -0.1621580   0.2310582
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0531627   -0.0264049   0.1265622
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1391059    0.0825745   0.1921539
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0253281   -0.0428909   0.0890847

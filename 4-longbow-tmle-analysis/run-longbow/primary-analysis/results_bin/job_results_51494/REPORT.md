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
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      143     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       47     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       86     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        8     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      119     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       13     233
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
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      297     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      126     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       56     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       26     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       46     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     7875   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      818   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5140   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      643   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2449   17365
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      440   17365
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
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      174     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       92     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        2     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
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
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      406     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       17     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       79     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        3     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       77     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        2     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8382   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      265   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5548   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      195   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2751   17261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      120   17261
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      119     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       11     231
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
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      291     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      123     573
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
![](/tmp/a4f10f3b-a81b-443d-a59e-63e3b0d705da/14e70ca3-ac3f-473b-8502-e28d6718d117/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4f10f3b-a81b-443d-a59e-63e3b0d705da/14e70ca3-ac3f-473b-8502-e28d6718d117/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4f10f3b-a81b-443d-a59e-63e3b0d705da/14e70ca3-ac3f-473b-8502-e28d6718d117/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4f10f3b-a81b-443d-a59e-63e3b0d705da/14e70ca3-ac3f-473b-8502-e28d6718d117/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1371525   0.0658458   0.2084592
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2292961   0.1919207   0.2666715
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2670430   0.1239313   0.4101546
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0856162   0.0597736   0.1114589
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0949842   0.0558925   0.1340758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1332639   0.0602147   0.2063130
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3005330   0.2564663   0.3445996
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3027802   0.1979532   0.4076071
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4098716   0.2969814   0.5227618
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0974582   0.0905991   0.1043174
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1084510   0.0994296   0.1174723
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1434541   0.1282105   0.1586976
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1596557   0.1446174   0.1746940
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1717887   0.1529848   0.1905926
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1405915   0.1140240   0.1671590
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0309134   0.0269236   0.0349032
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0330176   0.0279193   0.0381159
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0407911   0.0330841   0.0484981
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0277366   0.0204054   0.0350679
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0267744   0.0169334   0.0366155
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0225201   0.0130271   0.0320131
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1111111   0.0426082   0.1796140
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2232779   0.1834613   0.2630945
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2750000   0.1364985   0.4135015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0817030   0.0559615   0.1074444
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0849485   0.0467158   0.1231813
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1120831   0.0430540   0.1811122
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3002890   0.2559013   0.3446766
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3180728   0.2140391   0.4221065
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4051354   0.2911260   0.5191448
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0745855   0.0686070   0.0805640
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0855155   0.0772183   0.0938126
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1198855   0.1064832   0.1332877
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1440697   0.1295163   0.1586232
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1573179   0.1395718   0.1750640
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1344520   0.1080384   0.1608657


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3167808   0.2790172   0.3545444
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1094731   0.1042497   0.1146964
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1615413   0.1501758   0.1729068
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0336018   0.0307104   0.0364932
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0267062   0.0213205   0.0320920
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3176265   0.2794743   0.3557787
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0866585   0.0819882   0.0913288
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1478180   0.1371861   0.1584499


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.6718331   0.9692069   2.883828
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.9470512   0.9230621   4.106992
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.1094175   0.6661918   1.847527
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.5565254   0.8324294   2.910483
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0074774   0.6921888   1.466378
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3638158   0.9982930   1.863174
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1127942   0.9992331   1.239261
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4719541   1.2954342   1.672527
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0759945   0.9375459   1.234888
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8805914   0.7172627   1.081112
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0680688   0.8786607   1.298307
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3195288   1.0448690   1.666387
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9653096   0.6136434   1.518508
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8119264   0.4961697   1.328627
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0095012   1.0576908   3.817841
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.4750000   1.1164457   5.486720
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0397240   0.6005517   1.800055
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3718365   0.6868893   2.739794
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0592223   0.7400778   1.515992
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3491518   0.9817688   1.854011
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1465430   1.0122293   1.298679
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6073565   1.3998471   1.845627
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0919570   0.9420314   1.265743
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9332428   0.7515181   1.158910


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0823988    0.0142476   0.1505499
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0080513   -0.0092550   0.0253576
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0162479   -0.0081043   0.0406000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0120148    0.0066285   0.0174012
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0018856   -0.0080096   0.0117808
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0026884   -0.0003133   0.0056900
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0010304   -0.0062692   0.0042084
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0992210    0.0323673   0.1660747
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0045984   -0.0121960   0.0213928
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0173376   -0.0072533   0.0419284
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0120730    0.0072173   0.0169288
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0037483   -0.0059882   0.0134848


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3753054   -0.0222157   0.6182377
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0859562   -0.1179780   0.2526901
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0512906   -0.0287689   0.1251198
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1097515    0.0597827   0.1570647
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0116724   -0.0515226   0.0710695
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0800067   -0.0134627   0.1648556
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0385830   -0.2551328   0.1406052
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4717349    0.0481092   0.7068319
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0532833   -0.1624734   0.2289952
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0545847   -0.0260540   0.1288859
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1393174    0.0825984   0.1925297
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0253575   -0.0428521   0.0891058

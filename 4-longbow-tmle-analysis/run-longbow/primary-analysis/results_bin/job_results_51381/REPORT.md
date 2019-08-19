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

**Outcome Variable:** ever_swasted

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

agecat        studyid                 country        hfoodsec                ever_swasted   n_cell       n
------------  ----------------------  -------------  ---------------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      146     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       15     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        4     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        0     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       26     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        3     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0       11     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0      113     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        2     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0      171     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1       19     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        3     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        2     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0       16     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1        1     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       92     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1        2     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       14     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        1     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       18     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        1     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0       26     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1        1     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       29     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        0     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       55     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1        2     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0      125     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1        7     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       18     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        1     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       78     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        4     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       83     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       11     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      409     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       79     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       34     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        8     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      409     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       44     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      202     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       17     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       81     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        5     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      316     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      107     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       60     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       22     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       59     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       20     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8192   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      504   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5406   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      379   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2661   17376
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      234   17376
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     2580    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      169    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1818    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      130    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      660    5399
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1       42    5399
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      151     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       10     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        4     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        0     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       26     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        3     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0       11     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0      114     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        1     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        0      174     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        1       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        3     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        2     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      0       16     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      1        1     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        0       93     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        1        1     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       14     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        1     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       18     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        1     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        0       26     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        1        1     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       29     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        0     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      0       57     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      1        0     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0      129     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1        3     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       19     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        0     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       81     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        1     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       87     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1        7     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      442     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       44     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       37     622
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        5     622
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      417     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       36     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      208     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       11     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       83     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        3     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      380     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1       43     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       78     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1        4     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       72     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1        7     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8381   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      275   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5554   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      193   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2761   17282
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      118   17282
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     2525    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1       53    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1771    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1       41    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      653    5059
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1       16    5059
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      156     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1        5     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        4     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        0     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       29     194
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        0     194
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0       11     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0      114     129
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        1     129
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0      186     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1        4     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     212
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0       17     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1        0     212
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       93     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1        1     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       15     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        0     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       19     128
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        0     128
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0       27     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       28     111
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        0     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       54     111
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1        2     111
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0      126     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1        4     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       18     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        1     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       79     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        3     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       77     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1        4     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      382     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       38     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       35     541
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        5     541
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      428     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       10     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      199     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1        8     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       83     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        2     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      341     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1       73     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       62     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       19     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       63     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       15     573
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8396   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      237   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5552   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      191   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2737   17235
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      122   17235
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     2622    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      121    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1854    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1       90    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      672    5386
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1       27    5386


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/0cc25786-e188-488b-a204-6cf121b8c61c/b01f2623-605e-4464-a6cb-16b68d65224c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0cc25786-e188-488b-a204-6cf121b8c61c/b01f2623-605e-4464-a6cb-16b68d65224c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0cc25786-e188-488b-a204-6cf121b8c61c/b01f2623-605e-4464-a6cb-16b68d65224c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0cc25786-e188-488b-a204-6cf121b8c61c/b01f2623-605e-4464-a6cb-16b68d65224c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1170213   0.0519874   0.1820552
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.1618852   0.1291782   0.1945923
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.1904762   0.0716241   0.3093283
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0971302   0.0698420   0.1244185
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0776256   0.0421631   0.1130880
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0581395   0.0086499   0.1076292
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2529290   0.2113687   0.2944893
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2610920   0.1639902   0.3581937
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2407596   0.1457319   0.3357873
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0587918   0.0528811   0.0647026
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0637879   0.0565399   0.0710359
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0747089   0.0642828   0.0851350
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0612948   0.0515643   0.0710253
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0669609   0.0548323   0.0790894
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0599047   0.0404408   0.0793686
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.0744681   0.0213534   0.1275827
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.0905350   0.0650032   0.1160667
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.1190476   0.0210288   0.2170664
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0321129   0.0275831   0.0366427
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0333343   0.0277783   0.0388904
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0367925   0.0300608   0.0435241
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0206250   0.0146679   0.0265821
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0225412   0.0149224   0.0301599
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0239424   0.0099628   0.0379221
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1771689   0.1403578   0.2139801
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2240209   0.1345681   0.3134737
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1848587   0.0989482   0.2707693
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0281299   0.0242829   0.0319769
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0316424   0.0265795   0.0367053
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0395797   0.0318095   0.0473499
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0438982   0.0355090   0.0522874
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0467735   0.0360457   0.0575013
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0395316   0.0239404   0.0551227


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2551370   0.2197504   0.2905236
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0642841   0.0601838   0.0683844
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0631598   0.0562585   0.0700612
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0339081   0.0308239   0.0369923
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0217434   0.0173381   0.0261487
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1867365   0.1548005   0.2186725
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0319118   0.0290313   0.0347923
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0441886   0.0382741   0.0501032


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.3833830   0.7658275   2.498929
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.6277056   0.7058100   3.753738
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.7991905   0.4674468   1.366370
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.5985729   0.2442425   1.466942
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0322737   0.6878701   1.549114
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9518862   0.6206799   1.459830
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0849782   0.9329854   1.261732
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2707363   1.0736438   1.504010
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0924399   0.8522855   1.400264
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9773212   0.6861194   1.392114
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2157554   0.5646124   2.617834
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.5986395   0.5378468   4.751628
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0380366   0.8394780   1.283560
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1457235   0.9124733   1.438598
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0929056   0.6963792   1.715219
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.1608461   0.6036338   2.232419
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.2644479   0.8065396   1.982331
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0434039   0.6271033   1.736064
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1248690   0.9162695   1.380959
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4070339   1.1074054   1.787732
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0654972   0.7852594   1.445744
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9005277   0.5837770   1.389144


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0400300   -0.0213823   0.1014423
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0100590   -0.0261209   0.0060029
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0022080   -0.0198280   0.0242439
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0054922    0.0010478   0.0099366
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0018650   -0.0051106   0.0088407
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0155641   -0.0341879   0.0653160
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0017952   -0.0014726   0.0050631
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0011184   -0.0033522   0.0055891
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0095675   -0.0109921   0.0301272
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0037819    0.0008321   0.0067318
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0002904   -0.0057139   0.0062947


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2548849   -0.2559687   0.5579536
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.1155261   -0.3143298   0.0532068
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0086541   -0.0815893   0.0913680
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0854370    0.0136508   0.1519986
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0295289   -0.0874375   0.1339143
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1728723   -0.6105727   0.5752193
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0529444   -0.0487241   0.1447567
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0514378   -0.1771992   0.2356686
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0512355   -0.0652422   0.1549771
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1185124    0.0219075   0.2055758
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0065717   -0.1390326   0.1335631

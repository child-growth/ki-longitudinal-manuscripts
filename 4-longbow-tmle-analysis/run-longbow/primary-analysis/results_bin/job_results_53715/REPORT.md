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
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0      170     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1       20     212
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
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       76     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        6     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       83     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       11     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      408     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       80     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       34     624
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        8     624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      409     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       44     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      202     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       17     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       81     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        5     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      348     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      123     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       82     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       23     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       65     663
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       22     663
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8193   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      503   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5404   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      380   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2662   17375
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      233   17375
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
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       80     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        2     233
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
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      410     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1       61     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0      100     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1        5     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       78     663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1        9     663
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     8382   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1      274   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     5552   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      194   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     2762   17281
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      117   17281
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
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0      185     212
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1        5     212
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       78     231
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1        4     231
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       77     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1        4     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      382     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1       39     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       35     542
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1        5     542
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      428     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       10     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      199     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1        8     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       83     730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1        2     730
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      342     573
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1       72     573
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
![](/tmp/3df973d0-9deb-4943-8ea7-a9026c8c768a/8adfe0c3-0111-424f-b606-8755bb7f7f06/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3df973d0-9deb-4943-8ea7-a9026c8c768a/8adfe0c3-0111-424f-b606-8755bb7f7f06/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3df973d0-9deb-4943-8ea7-a9026c8c768a/8adfe0c3-0111-424f-b606-8755bb7f7f06/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3df973d0-9deb-4943-8ea7-a9026c8c768a/8adfe0c3-0111-424f-b606-8755bb7f7f06/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1170213   0.0519874   0.1820552
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.1639344   0.1310612   0.1968076
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.1904762   0.0716241   0.3093283
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0971302   0.0698420   0.1244185
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0776256   0.0421631   0.1130880
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0581395   0.0086499   0.1076292
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2617911   0.2219774   0.3016049
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2090101   0.1289836   0.2890365
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2446331   0.1517882   0.3374779
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0586240   0.0527710   0.0644771
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0642195   0.0569519   0.0714870
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0740802   0.0638167   0.0843437
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0612828   0.0515420   0.0710235
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0669437   0.0547702   0.0791171
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0601854   0.0406730   0.0796978
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.0744681   0.0213534   0.1275827
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.0905350   0.0650032   0.1160667
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.1190476   0.0210288   0.2170664
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1295117   0.0991657   0.1598577
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.0476190   0.0068550   0.0883831
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1034483   0.0394062   0.1674904
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0318593   0.0273779   0.0363406
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0341675   0.0283575   0.0399775
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0367729   0.0300743   0.0434714
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0205910   0.0146359   0.0265462
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0225715   0.0149530   0.0301901
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0239269   0.0100942   0.0377595
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1748138   0.1380721   0.2115555
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2186563   0.1291962   0.3081163
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1806391   0.0961048   0.2651735
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0278749   0.0240935   0.0316563
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0317611   0.0267022   0.0368200
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0404529   0.0322222   0.0486835
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0439289   0.0355274   0.0523304
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0468259   0.0360987   0.0575531
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0392771   0.0235362   0.0550181


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2533937   0.2202605   0.2865268
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0642302   0.0601218   0.0683386
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0631598   0.0562585   0.0700612
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1131222   0.0889940   0.1372504
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0338522   0.0307634   0.0369410
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0217434   0.0173381   0.0261487
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1849913   0.1531708   0.2168118
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0319118   0.0290313   0.0347923
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0441886   0.0382741   0.0501032


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.4008942   0.7759210   2.5292582
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.6277056   0.7058100   3.7537375
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.7991905   0.4674468   1.3663705
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.5985729   0.2442425   1.4669421
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.7983848   0.5290464   1.2048439
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9344591   0.6208751   1.4064240
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0954458   0.9424264   1.2733106
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2636484   1.0686989   1.4941602
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0923733   0.8515031   1.4013799
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9820924   0.6902717   1.3972837
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.2157554   0.5646124   2.6178337
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.5986395   0.5378468   4.7516283
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.3676815   0.1513636   0.8931453
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.7987564   0.4120415   1.5484160
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0724514   0.8656060   1.3287246
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1542285   0.9203633   1.4475191
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0961823   0.6987468   1.7196725
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.1620034   0.6073723   2.2231041
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.2507950   0.7899272   1.9805471
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0333230   0.6185523   1.7262183
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1394149   0.9297890   1.3963021
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.4512287   1.1355226   1.8547096
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0659466   0.7856134   1.4463121
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8941062   0.5760289   1.3878225


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0416326   -0.0198347    0.1030999
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0100590   -0.0261209    0.0060029
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0083975   -0.0294268    0.0126319
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0056062    0.0012077    0.0100047
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0018771   -0.0051071    0.0088612
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0155641   -0.0341879    0.0653160
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0163895   -0.0303412   -0.0024378
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0019930   -0.0012281    0.0052140
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0011524   -0.0033186    0.0056234
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0101774   -0.0105100    0.0308649
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0040369    0.0011391    0.0069346
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0002597   -0.0057569    0.0062763


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.2624113   -0.2436437    0.5625459
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.1155261   -0.3143298    0.0532068
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0331399   -0.1195259    0.0465802
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0872824    0.0162499    0.1531860
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0297192   -0.0874031    0.1342265
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1728723   -0.6105727    0.5752193
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.1448832   -0.2720211   -0.0304527
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0588721   -0.0414705    0.1495471
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0529991   -0.1756723    0.2371933
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0550158   -0.0634173    0.1602589
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1265015    0.0318348    0.2119116
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0058769   -0.1400392    0.1331168

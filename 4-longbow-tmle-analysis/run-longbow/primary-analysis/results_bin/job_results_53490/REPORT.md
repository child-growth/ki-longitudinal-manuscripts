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

**Outcome Variable:** ever_stunted

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
* delta_sex
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

agecat        studyid                 country        hfoodsec                ever_stunted   n_cell       n
------------  ----------------------  -------------  ---------------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0       61     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1      100     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       10     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1       19     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       84     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1       31     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0       66     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1      124     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        4     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        1     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0        7     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1       10     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       63     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1       31     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0        9     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        6     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0        9     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1       10     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0        6     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1       21     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0        8     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1       21     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       17     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1       40     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       55     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       77     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        9     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       25     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       57     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       44     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       51     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      159     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1      333     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0        8     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1       34     629
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      243     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1      210     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      113     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1      106     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       40     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1       46     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      181     674
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      298     674
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       38     674
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       68     674
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       26     674
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       63     674
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4441   17380
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     4258   17380
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2618   17380
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     3167   17380
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1212   17380
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     1684   17380
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1143    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1     1606    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      812    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1     1135    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      305    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      397    5398
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0      109     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       52     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        2     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        2     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       20     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1        9     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       91     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1       24     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        0      122     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                        1       68     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      0       13     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                      1        4     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        0       81     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                        1       13     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        3     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      0       12     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        7     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        0       13     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                        1       14     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0       17     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1       12     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      0       32     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                      1       25     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       80     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       52     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       16     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        3     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       49     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       33     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       65     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       30     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      320     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1      172     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0       24     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1       18     629
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      325     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1      128     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      146     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       73     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       58     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1       28     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      337     674
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      142     674
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       66     674
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       40     674
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       58     674
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       31     674
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     5485   17317
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     3186   17317
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     3352   17317
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     2409   17317
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1631   17317
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     1254   17317
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1662    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      933    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1189    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      636    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      467    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      205    5092
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0       61     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       48     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        1     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       10     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1       10     131
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     101
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     101
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     101
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0     101
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       84     101
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        7     101
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0       66     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1       56     140
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        4     140
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        1     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      0        7     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                      1        6     140
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        0       63     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                        1       18     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               0        9     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure               1        3     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      0        9     105
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                      1        3     105
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        0        6      61
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                        1        7      61
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               0        7      61
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure               1        9      61
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      0       17      61
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                      1       15      61
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       54     144
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       25     144
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     144
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        6     144
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       25     144
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       24     144
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        0       35     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                        1       21     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               0      106     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure               1      161     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      0        6     345
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                      1       16     345
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        0      232     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                        1       82     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      101     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       33     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      0       40     506
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                      1       18     506
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      132     387
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      156     387
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       20     387
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       28     387
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       19     387
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       32     387
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4411   10458
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     1072   10458
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2594   10458
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      758   10458
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1193   10458
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      430   10458
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1137    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      673    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0      811    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      499    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      303    3615
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      192    3615


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL

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
![](/tmp/9ea2707d-5c60-44cf-bbd6-6fe08ca6ec1e/499029d2-d43e-41dc-846b-31830d1bbe19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9ea2707d-5c60-44cf-bbd6-6fe08ca6ec1e/499029d2-d43e-41dc-846b-31830d1bbe19/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9ea2707d-5c60-44cf-bbd6-6fe08ca6ec1e/499029d2-d43e-41dc-846b-31830d1bbe19/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9ea2707d-5c60-44cf-bbd6-6fe08ca6ec1e/499029d2-d43e-41dc-846b-31830d1bbe19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                0.3297872   0.2343736   0.4252009
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                0.4000000   0.1511078   0.6488922
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                0.5263158   0.3009219   0.7517096
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.7777778   0.6202642   0.9352913
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.7241379   0.5607440   0.8875319
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.7017544   0.5824599   0.8210489
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.5833333   0.4990488   0.6676179
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4736842   0.2486892   0.6986792
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.6951220   0.5952672   0.7949767
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.5368421   0.4364916   0.6371926
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6768293   0.6354706   0.7181879
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.8095238   0.6906725   0.9283752
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.4652646   0.4193691   0.5111601
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4877896   0.4207861   0.5547931
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.5223214   0.4106969   0.6339460
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.6265031   0.5821875   0.6708186
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.6411171   0.5390534   0.7431807
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.7128323   0.6123189   0.8133457
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.5052930   0.4930396   0.5175465
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.5357833   0.5205491   0.5510175
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5704526   0.5490514   0.5918537
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.5848774   0.5624673   0.6072876
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.5817368   0.5557468   0.6077268
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.5653579   0.5225435   0.6081724
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.4889778   0.2904859   0.6874697
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.3933919   0.2075837   0.5792002
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4425522   0.3100036   0.5751008
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3160067   0.2222576   0.4097559
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.3497308   0.3075436   0.3919181
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4343739   0.2820253   0.5867224
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2822847   0.2407790   0.3237904
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.3359750   0.2731824   0.3987676
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3283240   0.2275977   0.4290502
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2977706   0.2560265   0.3395148
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.3885999   0.2887525   0.4884474
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.3596249   0.2501290   0.4691209
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.3786278   0.3662880   0.3909677
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4065912   0.3919450   0.4212375
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.4418758   0.4205911   0.4631605
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3597168   0.3384844   0.3809492
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3472850   0.3221287   0.3724412
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3066167   0.2689354   0.3442979
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5384615   0.2652198   0.8117033
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.5625000   0.3174088   0.8075912
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4687500   0.2944158   0.6430842
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3164557   0.2135386   0.4193728
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3750000   0.1369561   0.6130439
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4897959   0.3493391   0.6302527
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3750000   0.2480186   0.5019814
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6029963   0.5442233   0.6617692
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5409010   0.9136444
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2630544   0.2143535   0.3117552
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2493825   0.1744222   0.3243429
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3086829   0.1886102   0.4287556
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.5430636   0.4853629   0.6007643
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.5865554   0.4422868   0.7308239
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.6184537   0.4805189   0.7563885
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2083343   0.1961430   0.2205255
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2200471   0.2032188   0.2368755
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.2429055   0.2187898   0.2670213
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3720135   0.3460291   0.3979979
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3816599   0.3503571   0.4129628
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3870483   0.3396634   0.4344331


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.3671875   0.2833521   0.4510229
0-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.7256637   0.6430317   0.8082957
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.6137339   0.5510815   0.6763863
0-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6364985   0.6001579   0.6728391
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.5241082   0.5145463   0.5336700
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.5813264   0.5653125   0.5973403
0-6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.4513274   0.3591676   0.5434872
0-6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.3160237   0.2808984   0.3511491
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3955073   0.3867171   0.4042976
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3483896   0.3331073   0.3636720
6-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.5081967   0.3816986   0.6346949
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3819444   0.3023113   0.4615776
6-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5581395   0.5085981   0.6076809
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2161025   0.2066983   0.2255067
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3773167   0.3586399   0.3959936


### Parameter: RR


agecat        studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       1.2129032   0.6106769   2.4090222
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       1.5959253   0.9518332   2.6758654
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.9310345   0.6875281   1.2607852
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9022556   0.6926259   1.1753317
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.8120301   0.4942582   1.3341060
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1916376   0.9719830   1.4609312
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.2607604   1.0356748   1.5347643
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.5079365   1.1889272   1.9125414
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0484133   0.8864107   1.2400238
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1226331   0.8876982   1.4197450
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.0233263   0.8596575   1.2181559
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1377953   0.9717124   1.3322648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0603417   1.0246030   1.0973271
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1289540   1.0829716   1.1768887
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9946303   0.9376035   1.0551256
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9666263   0.8880299   1.0521790
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.8045190   0.4308073   1.5024137
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9050558   0.5442556   1.5050392
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.1067196   0.8033557   1.5246400
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.3745715   0.8682262   2.1762151
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1901991   0.9383368   1.5096646
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1630951   0.8276131   1.6345685
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3050310   0.9738332   1.7488682
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.2077245   0.8634791   1.6892111
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0738545   1.0244294   1.1256641
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1670451   1.1030878   1.2347107
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9654398   0.8804738   1.0586052
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8523834   0.7436122   0.9770651
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       1.0446429   0.5351702   2.0391245
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8705357   0.4640367   1.6331303
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.1850000   0.5807115   2.4181113
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.5477551   1.0032193   2.3878586
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.6079900   1.1304540   2.2872508
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.9393939   1.2683556   2.9654529
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9480266   0.6663758   1.3487200
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1734565   0.7629232   1.8049001
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.0800860   0.8261159   1.4121333
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1388237   0.8893715   1.4582426
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0562216   0.9625105   1.1590565
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1659414   1.0454677   1.3002979
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0259304   0.9207742   1.1430958
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       1.0404146   0.9047157   1.1964670


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0304006   -0.0241903   0.0849915
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0123080   -0.0167651   0.0413811
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0099954   -0.0143512   0.0343421
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0188151    0.0104642   0.0271660
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0035510   -0.0195864   0.0124844
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0376504   -0.2120714   0.1367706
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0337548   -0.0530368   0.1205464
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0198261   -0.0073019   0.0469541
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0182531   -0.0058742   0.0423804
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0168795    0.0080268   0.0257321
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0113272   -0.0260625   0.0034081
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0302648   -0.2728345   0.2123049
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0654887   -0.0073924   0.1383699
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1989130    0.0822062   0.3156198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0002085   -0.0302727   0.0298557
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0150759   -0.0139972   0.0441490
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0077683   -0.0007671   0.0163036
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0053032   -0.0132965   0.0239030


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0495338   -0.0440285   0.1347113
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0257719   -0.0370744   0.0848099
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0157038   -0.0233375   0.0532556
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0358993    0.0198657   0.0516707
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0061085   -0.0340786   0.0211051
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0834214   -0.5479626   0.2417117
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0965080   -0.1890583   0.3134922
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0656254   -0.0285689   0.1511935
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0577586   -0.0217577   0.1310867
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0426780    0.0200317   0.0648010
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0325130   -0.0757113   0.0089506
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0595534   -0.6629489   0.3249021
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.1714614   -0.0432176   0.3419627
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.3465909    0.1055065   0.5226981
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0007934   -0.1219658   0.1072924
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0270111   -0.0265821   0.0778063
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0359471   -0.0042734   0.0745567
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0140551   -0.0364772   0.0621238

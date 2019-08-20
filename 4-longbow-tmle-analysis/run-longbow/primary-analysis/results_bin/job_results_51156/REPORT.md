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
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0       62     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       99     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        3     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       10     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1       19     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       90     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1       25     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0       67     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1      123     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     212
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
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       56     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       76     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        9     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       26     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       56     233
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
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      151     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      272     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       22     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       60     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       21     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       58     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4447   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     4252   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2625   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     3161   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1214   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     1682   17381
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
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       95     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1       20     129
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
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       50     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       32     233
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
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      313     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      110     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       55     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       27     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       56     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       23     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     5500   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     3171   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     3364   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1     2398   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1638   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1     1247   17318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        0     1662    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                        1      933    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               0     1189    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure               1      636    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      0      467    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                      1      205    5092
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        0       62     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                        1       47     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure               1        1     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      0       10     131
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                      1       10     131
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        0        3     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                        1        0     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               0        7     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure               1        0     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      0       90     105
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                      1        5     105
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        0       67     140
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                        1       55     140
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               0        5     140
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure               1        0     140
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        0       55     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                        1       24     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        6     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      0       26     145
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                      1       24     145
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
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        0      143     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                        1      162     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               0       21     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure               1       33     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      0       21     415
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                      1       35     415
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        0     4417   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                        1     1081   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               0     2600   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure               1      763   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      0     1195   10491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                      1      435   10491
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
![](/tmp/0a2a8d8b-7a32-46f5-be38-7fb62bcd17c5/46902c2b-c9ee-47ee-b19c-d9fcb982d8ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a2a8d8b-7a32-46f5-be38-7fb62bcd17c5/46902c2b-c9ee-47ee-b19c-d9fcb982d8ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a2a8d8b-7a32-46f5-be38-7fb62bcd17c5/46902c2b-c9ee-47ee-b19c-d9fcb982d8ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a2a8d8b-7a32-46f5-be38-7fb62bcd17c5/46902c2b-c9ee-47ee-b19c-d9fcb982d8ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.5757576   0.4912643   0.6602508
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4736842   0.2486892   0.6986792
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.6829268   0.5819918   0.7838619
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.5368421   0.4364916   0.6371926
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6768293   0.6354706   0.7181879
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.8095238   0.6906725   0.9283752
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.4672215   0.4212219   0.5132212
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4832143   0.4165512   0.5498773
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.5186522   0.4071304   0.6301740
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.6453776   0.5987546   0.6920006
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.7245768   0.6174690   0.8316845
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.6991484   0.5905760   0.8077208
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.5045659   0.4923362   0.5167956
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.5345492   0.5193258   0.5497727
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.5704053   0.5487978   0.5920129
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.5850362   0.5628094   0.6072630
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.5829138   0.5571530   0.6086745
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.5662489   0.5235172   0.6089805
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5207896   0.3259897   0.7155895
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.4202976   0.2349075   0.6056877
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4422501   0.3115546   0.5729455
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3147513   0.2200011   0.4095015
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.3492107   0.3069993   0.3914220
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.4250621   0.2729826   0.5771416
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2816937   0.2401621   0.3232253
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.3333754   0.2705737   0.3961772
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3220367   0.2212368   0.4228365
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2624702   0.2194655   0.3054749
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.3168528   0.2037318   0.4299739
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2993725   0.1921788   0.4065662
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.3766336   0.3643782   0.3888889
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.4036942   0.3891173   0.4182711
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.4370552   0.4155714   0.4585391
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3601731   0.3389387   0.3814074
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3477938   0.3226179   0.3729697
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3067458   0.2687786   0.3447130
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.5384615   0.2652198   0.8117033
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.5625000   0.3174088   0.8075912
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.4687500   0.2944158   0.6430842
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3037975   0.2020328   0.4055622
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3750000   0.1369619   0.6130381
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4800000   0.3410405   0.6189595
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.3750000   0.2480186   0.5019814
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.6029963   0.5442233   0.6617692
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.7272727   0.5409010   0.9136444
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.2629104   0.2142951   0.3115257
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2378999   0.1646364   0.3111635
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3009971   0.1804167   0.4215775
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.5316552   0.4753630   0.5879473
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.6177130   0.4818494   0.7535766
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.6092203   0.4778205   0.7406202
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.2092736   0.1970545   0.2214928
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.2211044   0.2046428   0.2375660
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.2438096   0.2199704   0.2676487
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.3719161   0.3460008   0.3978313
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.3809853   0.3497362   0.4122344
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.3883248   0.3403488   0.4363009


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.3671875   0.2833521   0.4510229
0-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.7256637   0.6430317   0.8082957
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.6051502   0.5422501   0.6680504
0-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6678082   0.6295756   0.7060408
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.5232725   0.5136886   0.5328564
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.5813264   0.5653125   0.5973403
0-6 months    ki0047075b-MAL-ED       PERU           NA                   NA                0.4513274   0.3591676   0.5434872
0-6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2739726   0.2377697   0.3101755
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.3935789   0.3847652   0.4023927
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3483896   0.3331073   0.3636720
6-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.5081967   0.3816986   0.6346949
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3724138   0.2934521   0.4513755
6-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5542169   0.5063374   0.6020964
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2172338   0.2078312   0.2266365
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
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.8227147   0.5004294   1.3525572
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1861361   0.9631193   1.4607939
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.2607604   1.0356748   1.5347643
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.5079365   1.1889272   1.9125414
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0342295   0.8738628   1.2240257
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1100776   0.8766324   1.4056887
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.1227176   0.9522655   1.3236801
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.0833168   0.9126340   1.2859210
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0594239   1.0238785   1.0962033
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1304872   1.0839308   1.1790433
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9963721   0.9395983   1.0565764
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.9678869   0.8891539   1.0535915
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.8070391   0.4531452   1.4373144
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8491914   0.5274450   1.3672061
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.1094812   0.8020138   1.5348221
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.3504697   0.8461018   2.1554952
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1834678   0.9317798   1.5031404
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1432157   0.8086285   1.6162454
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.2071954   0.8148129   1.7885340
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1405962   0.7693006   1.6910941
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0718487   1.0226993   1.1233602
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1604257   1.0957924   1.2288713
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9656297   0.8806033   1.0588658
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8516622   0.7422275   0.9772321
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       1.0446429   0.5351702   2.0391245
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.8705357   0.4640367   1.6331303
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.2343750   0.6021990   2.5301963
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.5800000   1.0147938   2.4600071
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.6079900   1.1304540   2.2872508
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.9393939   1.2683556   2.9654529
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9048709   0.6318915   1.2957782
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1448658   0.7365087   1.7796364
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.1618679   0.9102184   1.4830913
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1458938   0.9009369   1.4574523
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.0565326   0.9647214   1.1570813
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.1650277   1.0466751   1.2967630
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0243851   0.9192751   1.1415135
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       1.0441195   0.9075803   1.2012002


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0293926   -0.0254397   0.0842250
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0103510   -0.0189445   0.0396466
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0224307   -0.0020946   0.0469559
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0187066    0.0103847   0.0270286
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0037098   -0.0196888   0.0122692
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0694622   -0.2392584   0.1003340
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0350102   -0.0527154   0.1227358
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0204171   -0.0067321   0.0475663
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0115024   -0.0128457   0.0358506
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0169454    0.0082036   0.0256872
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0117834   -0.0265722   0.0030053
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0302648   -0.2728345   0.2123049
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0686163   -0.0042292   0.1414619
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1989130    0.0822062   0.3156198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0000645   -0.0301235   0.0299944
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0225617   -0.0062800   0.0514034
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0079602   -0.0005348   0.0164552
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0054007   -0.0131647   0.0239661


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0485708   -0.0467897   0.1352442
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0216742   -0.0416481   0.0811472
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0335885   -0.0040128   0.0697816
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0357493    0.0197482   0.0514891
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0063816   -0.0342544   0.0207400
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1539064   -0.5996489   0.1676298
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1000974   -0.1892221   0.3190299
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0675815   -0.0267120   0.1532151
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0419838   -0.0511427   0.1268597
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0430546    0.0205874   0.0650065
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0338226   -0.0771866   0.0077958
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0595534   -0.6629489   0.3249021
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.1842475   -0.0366419   0.3580695
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.3465909    0.1055065   0.5226981
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0002455   -0.1213992   0.1078189
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0407092   -0.0129537   0.0915292
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0366434   -0.0031832   0.0748889
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0143134   -0.0361210   0.0622927

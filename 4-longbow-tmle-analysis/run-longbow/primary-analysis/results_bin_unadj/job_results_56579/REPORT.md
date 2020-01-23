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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country        hfoodsec                ever_co   n_cell       n  outcome_variable 
------------  ----------------------  -------------  ---------------------  --------  -------  ------  -----------------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      135     194  ever_co          
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       26     194  ever_co          
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194  ever_co          
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194  ever_co          
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       24     194  ever_co          
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     194  ever_co          
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129  ever_co          
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129  ever_co          
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129  ever_co          
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129  ever_co          
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      112     129  ever_co          
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        3     129  ever_co          
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      143     212  ever_co          
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       47     212  ever_co          
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212  ever_co          
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212  ever_co          
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212  ever_co          
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212  ever_co          
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       86     128  ever_co          
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        8     128  ever_co          
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       13     128  ever_co          
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        2     128  ever_co          
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128  ever_co          
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128  ever_co          
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     113  ever_co          
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     113  ever_co          
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113  ever_co          
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113  ever_co          
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     113  ever_co          
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     113  ever_co          
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      118     233  ever_co          
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       14     233  ever_co          
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233  ever_co          
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233  ever_co          
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     233  ever_co          
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     233  ever_co          
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       81     624  ever_co          
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1       13     624  ever_co          
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      376     624  ever_co          
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1      112     624  ever_co          
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       30     624  ever_co          
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       12     624  ever_co          
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      414     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       39     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      199     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       20     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       74     758  ever_co          
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       12     758  ever_co          
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      339     663  ever_co          
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      132     663  ever_co          
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       77     663  ever_co          
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       28     663  ever_co          
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       54     663  ever_co          
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     663  ever_co          
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     7874   17364  ever_co          
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      819   17364  ever_co          
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5137   17364  ever_co          
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      645   17364  ever_co          
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2449   17364  ever_co          
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      440   17364  ever_co          
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2309    5398  ever_co          
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      440    5398  ever_co          
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1614    5398  ever_co          
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      333    5398  ever_co          
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      603    5398  ever_co          
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       99    5398  ever_co          
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      157     194  ever_co          
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        4     194  ever_co          
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194  ever_co          
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194  ever_co          
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       28     194  ever_co          
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        1     194  ever_co          
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129  ever_co          
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129  ever_co          
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129  ever_co          
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129  ever_co          
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      114     129  ever_co          
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        1     129  ever_co          
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      173     212  ever_co          
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1       17     212  ever_co          
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212  ever_co          
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212  ever_co          
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212  ever_co          
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212  ever_co          
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       92     128  ever_co          
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        2     128  ever_co          
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128  ever_co          
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128  ever_co          
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       18     128  ever_co          
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        1     128  ever_co          
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       27     113  ever_co          
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        0     113  ever_co          
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       29     113  ever_co          
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     113  ever_co          
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       56     113  ever_co          
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1        1     113  ever_co          
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      128     233  ever_co          
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        4     233  ever_co          
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233  ever_co          
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233  ever_co          
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       82     233  ever_co          
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     233  ever_co          
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       88     622  ever_co          
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        6     622  ever_co          
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      451     622  ever_co          
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       35     622  ever_co          
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       38     622  ever_co          
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        4     622  ever_co          
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      443     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       10     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      214     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        5     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       84     758  ever_co          
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        2     758  ever_co          
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      448     663  ever_co          
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       23     663  ever_co          
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       98     663  ever_co          
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        7     663  ever_co          
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       84     663  ever_co          
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        3     663  ever_co          
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8381   17260  ever_co          
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      266   17260  ever_co          
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5545   17260  ever_co          
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      197   17260  ever_co          
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2751   17260  ever_co          
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      120   17260  ever_co          
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2502    5055  ever_co          
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       72    5055  ever_co          
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1764    5055  ever_co          
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       48    5055  ever_co          
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      654    5055  ever_co          
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       15    5055  ever_co          
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      136     194  ever_co          
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1       25     194  ever_co          
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194  ever_co          
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194  ever_co          
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       24     194  ever_co          
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        5     194  ever_co          
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129  ever_co          
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129  ever_co          
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129  ever_co          
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129  ever_co          
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      113     129  ever_co          
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        2     129  ever_co          
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      149     212  ever_co          
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1       41     212  ever_co          
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212  ever_co          
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212  ever_co          
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       14     212  ever_co          
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        3     212  ever_co          
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       88     128  ever_co          
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        6     128  ever_co          
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       14     128  ever_co          
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        1     128  ever_co          
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       13     128  ever_co          
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        6     128  ever_co          
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       24     111  ever_co          
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        3     111  ever_co          
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       28     111  ever_co          
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     111  ever_co          
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       52     111  ever_co          
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        4     111  ever_co          
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      118     231  ever_co          
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1       12     231  ever_co          
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     231  ever_co          
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     231  ever_co          
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     231  ever_co          
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     231  ever_co          
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       72     542  ever_co          
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        9     542  ever_co          
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      327     542  ever_co          
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       94     542  ever_co          
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       29     542  ever_co          
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1       11     542  ever_co          
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      402     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       36     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      190     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       17     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       75     730  ever_co          
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1       10     730  ever_co          
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      289     573  ever_co          
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1      125     573  ever_co          
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       55     573  ever_co          
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1       26     573  ever_co          
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       45     573  ever_co          
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1       33     573  ever_co          
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8015   17217  ever_co          
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      614   17217  ever_co          
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5233   17217  ever_co          
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1      507   17217  ever_co          
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2477   17217  ever_co          
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1      371   17217  ever_co          
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2347    5385  ever_co          
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1      396    5385  ever_co          
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1638    5385  ever_co          
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1      305    5385  ever_co          
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      604    5385  ever_co          
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       95    5385  ever_co          


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
![](/tmp/eba182fe-cf21-4f25-b332-bbdce72561d0/619712d4-b3e9-43c5-8f91-94205ed67245/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eba182fe-cf21-4f25-b332-bbdce72561d0/619712d4-b3e9-43c5-8f91-94205ed67245/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eba182fe-cf21-4f25-b332-bbdce72561d0/619712d4-b3e9-43c5-8f91-94205ed67245/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eba182fe-cf21-4f25-b332-bbdce72561d0/619712d4-b3e9-43c5-8f91-94205ed67245/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1382979   0.0684555   0.2081402
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2295082   0.1921686   0.2668478
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2857143   0.1489812   0.4224474
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0860927   0.0602451   0.1119403
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0913242   0.0531465   0.1295019
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1395349   0.0662535   0.2128163
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2802548   0.2396636   0.3208459
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.2666667   0.1820187   0.3513146
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.3793103   0.2772750   0.4813457
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0942137   0.0876125   0.1008149
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1115531   0.1025940   0.1205122
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1523018   0.1379924   0.1666113
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1600582   0.1449979   0.1751186
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1710324   0.1522107   0.1898540
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1410256   0.1141371   0.1679142
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0307621   0.0268843   0.0346400
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0343086   0.0291319   0.0394853
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0417973   0.0340907   0.0495038
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0279720   0.0206171   0.0353270
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0264901   0.0167895   0.0361906
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0224215   0.0128556   0.0319875
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1111111   0.0426082   0.1796140
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2232779   0.1834613   0.2630945
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2750000   0.1364985   0.4135015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0821918   0.0564524   0.1079312
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0821256   0.0446980   0.1195532
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1176471   0.0491064   0.1861877
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.3019324   0.2576704   0.3461943
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.3209877   0.2192298   0.4227455
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4230769   0.3133410   0.5328128
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0711554   0.0654398   0.0768710
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0883275   0.0800931   0.0965619
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1302669   0.1168108   0.1437229
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1443675   0.1298161   0.1589189
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1569738   0.1392555   0.1746920
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1359084   0.1091211   0.1626958


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
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.6595208   0.9762421   2.821031
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.0659341   1.0302847   4.142625
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0607657   0.6340080   1.774779
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.6207513   0.8851020   2.967833
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9515152   0.6712516   1.348795
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.3534483   0.9971439   1.837069
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1840428   1.0667401   1.314244
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6165565   1.4382972   1.816909
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0685635   0.9303378   1.227326
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8810897   0.7167643   1.083088
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1152876   0.9203502   1.351514
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.3587260   1.0800744   1.709268
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9470199   0.6033049   1.486556
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8015695   0.4881779   1.316147
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       2.0095012   1.0576908   3.817841
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       2.4750000   1.1164457   5.486720
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9991948   0.5747808   1.736993
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4313725   0.7387504   2.773369
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0631111   0.7497097   1.507524
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.4012308   1.0402017   1.887564
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.2413326   1.1002621   1.400491
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.8307373   1.6051265   2.088059
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0873207   0.9378076   1.260671
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9414062   0.7576381   1.169748


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0812534    0.0144338   0.1480730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0075748   -0.0097559   0.0249056
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0108463   -0.0116064   0.0332990
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0154384    0.0103896   0.0204872
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0014831   -0.0084827   0.0114489
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0030154    0.0001305   0.0059003
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0012658   -0.0065180   0.0039864
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0992210    0.0323673   0.1660747
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0041096   -0.0127134   0.0209326
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0191846   -0.0051505   0.0435197
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0155031    0.0109488   0.0200574
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0034505   -0.0063279   0.0132290


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3700885   -0.0160266   0.6094704
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0808693   -0.1232318   0.2478835
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0372595   -0.0430157   0.1113564
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1407945    0.0942443   0.1849522
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0091810   -0.0544705   0.0689902
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0892726    0.0001971   0.1704121
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0473970   -0.2645256   0.1324489
6-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4717349    0.0481092   0.7068319
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0476190   -0.1683708   0.2236801
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0597432   -0.0191371   0.1325183
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1788990    0.1260901   0.2285168
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0233431   -0.0451500   0.0873476

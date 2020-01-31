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

**Outcome Variable:** wasted

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

agecat      studyid                 country        hfoodsec                wasted   n_cell       n  outcome_variable 
----------  ----------------------  -------------  ---------------------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      113     162  wasted           
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1       25     162  wasted           
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        3     162  wasted           
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     162  wasted           
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       17     162  wasted           
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        4     162  wasted           
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        0      26  wasted           
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0      26  wasted           
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0        4      26  wasted           
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0      26  wasted           
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                0       21      26  wasted           
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        1      26  wasted           
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  0       29      35  wasted           
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  1        3      35  wasted           
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        1      35  wasted           
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        0      35  wasted           
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                0        0      35  wasted           
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                1        2      35  wasted           
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  0       10      14  wasted           
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  1        0      14  wasted           
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0        1      14  wasted           
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        0      14  wasted           
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                0        2      14  wasted           
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                1        1      14  wasted           
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  0       22      89  wasted           
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  1        1      89  wasted           
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       22      89  wasted           
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0      89  wasted           
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                0       42      89  wasted           
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                1        2      89  wasted           
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0       42      87  wasted           
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        3      87  wasted           
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0        8      87  wasted           
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1      87  wasted           
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       29      87  wasted           
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        4      87  wasted           
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       69     575  wasted           
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1       17     575  wasted           
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      311     575  wasted           
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1      142     575  wasted           
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       27     575  wasted           
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        9     575  wasted           
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      330     707  wasted           
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1       99     707  wasted           
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      150     707  wasted           
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       49     707  wasted           
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       55     707  wasted           
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1       24     707  wasted           
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      347     620  wasted           
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       95     620  wasted           
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       87     620  wasted           
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1       13     620  wasted           
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       59     620  wasted           
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       19     620  wasted           
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     5214   11763  wasted           
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      583   11763  wasted           
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     3524   11763  wasted           
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      423   11763  wasted           
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     1787   11763  wasted           
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      232   11763  wasted           
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     1093    2383  wasted           
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      112    2383  wasted           
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0      776    2383  wasted           
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1       94    2383  wasted           
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      275    2383  wasted           
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       33    2383  wasted           
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      155     193  wasted           
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1        5     193  wasted           
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     193  wasted           
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     193  wasted           
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       27     193  wasted           
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        2     193  wasted           
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        3     129  wasted           
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     129  wasted           
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129  wasted           
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129  wasted           
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                0      115     129  wasted           
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        0     129  wasted           
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  0      174     212  wasted           
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  1       16     212  wasted           
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        3     212  wasted           
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        2     212  wasted           
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                0       16     212  wasted           
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                1        1     212  wasted           
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  0       93     128  wasted           
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  1        1     128  wasted           
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0       14     128  wasted           
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        1     128  wasted           
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                0       19     128  wasted           
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                1        0     128  wasted           
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  0       27     111  wasted           
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  1        0     111  wasted           
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       28     111  wasted           
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     111  wasted           
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                0       56     111  wasted           
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                1        0     111  wasted           
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0      126     228  wasted           
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        3     228  wasted           
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228  wasted           
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228  wasted           
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       78     228  wasted           
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        3     228  wasted           
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       78     537  wasted           
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        2     537  wasted           
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      388     537  wasted           
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1       29     537  wasted           
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       36     537  wasted           
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        4     537  wasted           
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      419     715  wasted           
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1        8     715  wasted           
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      194     715  wasted           
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       10     715  wasted           
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       81     715  wasted           
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        3     715  wasted           
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      360     546  wasted           
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       36     546  wasted           
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       74     546  wasted           
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1        2     546  wasted           
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       64     546  wasted           
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       10     546  wasted           
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     7734   16764  wasted           
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      662   16764  wasted           
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     5113   16764  wasted           
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      477   16764  wasted           
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     2498   16764  wasted           
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      280   16764  wasted           
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     2304    4795  wasted           
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      141    4795  wasted           
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     1623    4795  wasted           
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      105    4795  wasted           
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      595    4795  wasted           
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       27    4795  wasted           
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      142     194  wasted           
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1       19     194  wasted           
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     194  wasted           
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     194  wasted           
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       27     194  wasted           
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        2     194  wasted           
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        3     129  wasted           
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     129  wasted           
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129  wasted           
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129  wasted           
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                0      114     129  wasted           
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        1     129  wasted           
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  0      170     212  wasted           
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  1       20     212  wasted           
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        2     212  wasted           
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        3     212  wasted           
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                0       14     212  wasted           
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                1        3     212  wasted           
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  0       93     128  wasted           
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  1        1     128  wasted           
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0       15     128  wasted           
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        0     128  wasted           
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                0       19     128  wasted           
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                1        0     128  wasted           
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  0       25     107  wasted           
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  1        1     107  wasted           
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       27     107  wasted           
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     107  wasted           
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                0       52     107  wasted           
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                1        2     107  wasted           
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0      129     228  wasted           
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        0     228  wasted           
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228  wasted           
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228  wasted           
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       81     228  wasted           
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        0     228  wasted           
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       63     428  wasted           
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        5     428  wasted           
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      281     428  wasted           
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1       46     428  wasted           
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       31     428  wasted           
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        2     428  wasted           
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      302     514  wasted           
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1       32     514  wasted           
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      116     514  wasted           
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1        8     514  wasted           
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       51     514  wasted           
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        5     514  wasted           
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      276     477  wasted           
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       65     477  wasted           
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       56     477  wasted           
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1       11     477  wasted           
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       55     477  wasted           
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       14     477  wasted           
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     3084    8190  wasted           
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      773    8190  wasted           
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     2114    8190  wasted           
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      639    8190  wasted           
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     1208    8190  wasted           
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      372    8190  wasted           
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     1939    4696  wasted           
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      450    4696  wasted           
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     1352    4696  wasted           
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      347    4696  wasted           
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      490    4696  wasted           
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1      118    4696  wasted           


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
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/d464c805-bd92-49f7-98e2-d83d2da69817/5a791347-4000-4a8e-84cf-6808bd8411f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d464c805-bd92-49f7-98e2-d83d2da69817/5a791347-4000-4a8e-84cf-6808bd8411f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d464c805-bd92-49f7-98e2-d83d2da69817/5a791347-4000-4a8e-84cf-6808bd8411f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d464c805-bd92-49f7-98e2-d83d2da69817/5a791347-4000-4a8e-84cf-6808bd8411f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1976744   0.1134327   0.2819162
Birth       ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3134658   0.2707092   0.3562224
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2500000   0.1084286   0.3915714
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2307692   0.1908719   0.2706666
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2462312   0.1863322   0.3061301
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3037975   0.2023125   0.4052824
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2149321   0.1766063   0.2532580
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1300000   0.0640325   0.1959675
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2435897   0.1482532   0.3389263
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1005693   0.0921140   0.1090245
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1071700   0.0965185   0.1178215
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1149084   0.1014271   0.1283897
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0929461   0.0725815   0.1133106
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1080460   0.0807836   0.1353083
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1071429   0.0665162   0.1477695
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0788471   0.0721168   0.0855773
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0853309   0.0777954   0.0928665
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1007919   0.0892531   0.1123308
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0576687   0.0460356   0.0693018
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0607639   0.0473306   0.0741972
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0434084   0.0104539   0.0763628
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1906158   0.1488825   0.2323492
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1641791   0.0753854   0.2529728
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2028986   0.1079091   0.2978880
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2004148   0.1865436   0.2142860
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2321104   0.2150817   0.2491391
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2354430   0.2141082   0.2567779
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1883633   0.1700380   0.2066886
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2042378   0.1819555   0.2265200
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1940789   0.1534371   0.2347208


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2048387   0.1730454   0.2366321
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1052453   0.0993428   0.1111477
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1002937   0.0848872   0.1157003
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0846457   0.0798459   0.0894454
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0569343   0.0480657   0.0658029
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1886792   0.1535311   0.2238274
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.2178266   0.2079286   0.2277246
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1948467   0.1815077   0.2081857


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.5857681   1.0137016   2.480671
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.2647059   0.6225768   2.569130
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0670017   0.7916870   1.438059
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3164557   0.9037530   1.917621
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.6048421   0.3532255   1.035695
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.1333333   0.7371783   1.742380
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0656338   0.9322760   1.218068
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1425794   0.9925018   1.315351
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1624589   0.8345924   1.619127
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.1527423   0.7424337   1.789810
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0822336   0.9593723   1.220829
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2783219   1.1113581   1.470369
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0536717   0.7823741   1.419045
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7527195   0.3460734   1.637186
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.422075
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.291916
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.8613088   0.4805754   1.543676
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0644370   0.6348405   1.784741
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1581499   1.0471476   1.280919
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1747785   1.0509335   1.313218
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0842757   0.9374459   1.254103
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0303436   0.8172833   1.298947


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0944995    0.0147631   0.1742359
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0125122   -0.0132117   0.0382362
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0100934   -0.0297241   0.0095372
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0046760   -0.0014392   0.0107912
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0073477   -0.0077489   0.0224443
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0057986    0.0012328   0.0103644
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0007344   -0.0091289   0.0076601
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0019366   -0.0240019   0.0201287
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0174118    0.0072086   0.0276149
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0064833   -0.0065888   0.0195555


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3234358   -0.0106683   0.5470926
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0514311   -0.0603323   0.1514142
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0492749   -0.1494688   0.0421855
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0444296   -0.0155074   0.1008289
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0732617   -0.0892305   0.2115132
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0685044    0.0126916   0.1211620
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0128992   -0.1718428   0.1244860
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0102639   -0.1342383   0.1001598
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0799342    0.0319153   0.1255712
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0332741   -0.0361486   0.0980454

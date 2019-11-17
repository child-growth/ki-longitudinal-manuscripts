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

agecat      studyid                 country        hfoodsec                wasted   n_cell       n
----------  ----------------------  -------------  ---------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      113     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1       25     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        3     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       17     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        4     162
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0        4      26
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                0       21      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        1      26
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  0       29      35
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  1        3      35
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        1      35
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        0      35
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                0        0      35
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                1        2      35
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  0       10      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0        1      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                0        2      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                1        1      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  0       22      89
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  1        1      89
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       22      89
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0      89
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                0       42      89
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                1        2      89
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0       42      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        3      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0        8      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       29      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        4      87
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       69     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1       17     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      311     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1      142     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       27     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        9     575
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      330     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1       99     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      150     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       49     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       55     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1       24     707
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      347     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       95     620
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       87     620
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1       13     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       59     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       19     620
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     5214   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      583   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     3524   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      423   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     1787   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      232   11763
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     1093    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      112    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0      776    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1       94    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      275    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       33    2383
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      155     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1        5     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       27     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        2     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  0      174     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  1       16     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        3     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        2     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  0       93     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  1        1     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0       14     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        1     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  0       27     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  1        0     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       28     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                0       56     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                1        0     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0      126     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        3     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       78     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        3     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       78     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        2     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      388     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1       29     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       36     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        4     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      419     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1        8     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      194     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1       10     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       81     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        3     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      360     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       36     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       74     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1        2     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       64     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       10     546
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     7734   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      662   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     5113   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      477   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     2498   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      280   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     2304    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      141    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     1623    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      105    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      595    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1       27    4795
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  0      142     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  1       19     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         0        4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                0       27     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                1        2     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                0      114     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                1        1     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  0      170     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  1       20     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         0        2     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         1        3     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                0       14     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                1        3     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  0       93     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  1        1     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                0       19     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                1        0     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  0       25     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  1        1     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         0       27     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         1        0     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                0       52     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                1        2     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  0      129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         0       17     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         1        1     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                0       81     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                1        0     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  0       63     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  1        5     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         0      281     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         1       46     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                0       31     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                1        2     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  0      302     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  1       32     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         0      116     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         1        8     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                0       51     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                1        5     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  0      276     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  1       65     477
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         0       56     477
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         1       11     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                0       55     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                1       14     477
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  0     3084    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                  1      773    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         0     2114    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure         1      639    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                0     1208    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                1      372    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  0     1939    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  1      450    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         0     1352    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         1      347    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                0      490    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                1      118    4696


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




# Results Detail

## Results Plots
![](/tmp/ee86e0e0-2074-406d-972c-5826f02e5435/6a6f2af5-b762-429a-aaf7-471cd4540dfc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee86e0e0-2074-406d-972c-5826f02e5435/6a6f2af5-b762-429a-aaf7-471cd4540dfc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee86e0e0-2074-406d-972c-5826f02e5435/6a6f2af5-b762-429a-aaf7-471cd4540dfc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee86e0e0-2074-406d-972c-5826f02e5435/6a6f2af5-b762-429a-aaf7-471cd4540dfc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1976744   0.1134327   0.2819162
Birth       ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.3134658   0.2707092   0.3562224
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2500000   0.1084286   0.3915714
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.2299712   0.1900035   0.2699390
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2514036   0.1905550   0.3122522
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3005262   0.1995505   0.4015020
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.2156311   0.1770857   0.2541766
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1216186   0.0570911   0.1861461
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2488455   0.1491435   0.3485475
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0997026   0.0907417   0.1086636
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1056574   0.0943043   0.1170105
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1159523   0.1014870   0.1304176
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0925847   0.0721687   0.1130006
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1095684   0.0815007   0.1376360
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1084072   0.0685440   0.1482703
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0807402   0.0738115   0.0876689
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0843844   0.0766625   0.0921063
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0919464   0.0803767   0.1035161
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0576326   0.0459400   0.0693252
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0604940   0.0472037   0.0737843
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0430763   0.0096030   0.0765495
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0958084   0.0642126   0.1274042
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0645161   0.0212336   0.1077986
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.1878725   0.1465355   0.2292095
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1713543   0.0767536   0.2659551
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.2066205   0.1088765   0.3043646
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.2008734   0.1866899   0.2150569
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.2284614   0.2109955   0.2459274
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2302491   0.2073233   0.2531749
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1881009   0.1697429   0.2064588
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2046701   0.1824541   0.2268860
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1942667   0.1544466   0.2340869


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


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.5857681   1.0137016   2.4806713
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       1.2647059   0.6225768   2.5691303
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0931956   0.8113624   1.4729260
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3067992   0.8953528   1.9073200
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.5640122   0.3223282   0.9869125
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.1540333   0.7445825   1.7886438
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0597247   0.9173075   1.2242530
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1629809   1.0020507   1.3497567
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.1834398   0.8463715   1.6547461
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.1708976   0.7605613   1.8026178
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.0451348   0.9230470   1.1833707
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1387932   0.9807774   1.3222674
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0496494   0.7796049   1.4132335
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.7474288   0.3372396   1.6565371
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.6733871   0.3188651   1.4220753
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       0.9319196   0.3789294   2.2919156
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9120779   0.5033388   1.6527356
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.0997912   0.6523453   1.8541416
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1373405   1.0250801   1.2618949
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.1462398   1.0181261   1.2904744
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0880867   0.9411121   1.2580144
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0327795   0.8225491   1.2967413


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.0944995    0.0147631   0.1742359
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0133102   -0.0124718   0.0390923
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0107924   -0.0305400   0.0089552
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0055426   -0.0011407   0.0122259
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0077091   -0.0074636   0.0228818
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0039055   -0.0009721   0.0087830
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0006983   -0.0091701   0.0077736
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0082597   -0.0255539   0.0090344
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0008067   -0.0211645   0.0227779
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0169532    0.0063629   0.0275436
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0067458   -0.0063256   0.0198172


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.3234358   -0.0106683   0.5470926
Birth       ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0547112   -0.0573647   0.1549076
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0526874   -0.1534188   0.0392468
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0526638   -0.0131203   0.1141764
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0768651   -0.0865496   0.2157025
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0461389   -0.0133928   0.1021734
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0122648   -0.1727738   0.1262765
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0943446   -0.3091652   0.0852260
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0042758   -0.1192517   0.1141700
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0778290    0.0279300   0.1251665
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0346210   -0.0348094   0.0993930

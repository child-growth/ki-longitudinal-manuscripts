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

**Outcome Variable:** swasted

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

agecat      studyid                 country        hfoodsec                swasted   n_cell       n
----------  ----------------------  -------------  ---------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      133     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        5     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       19     162
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        2     162
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0        4      26
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0       22      26
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0      26
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   0       32      35
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                   1        0      35
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        1      35
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0      35
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 0        2      35
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                 1        0      35
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   0       10      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0        1      14
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 0        2      14
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        1      14
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   0       23      89
Birth       ki0047075b-MAL-ED       PERU           Food Secure                   1        0      89
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       22      89
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0      89
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 0       44      89
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                 1        0      89
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0       45      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        0      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       33      87
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0      87
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       80     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        6     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      424     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1       29     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       33     575
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        3     575
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      395     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1       34     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      189     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       10     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       76     707
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        3     707
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      423     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       19     620
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       98     620
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        2     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       74     620
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        4     620
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     5713   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1       84   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     3876   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       71   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1984   11763
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       35   11763
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     1190    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       15    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0      858    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       12    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      304    2383
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1        4    2383
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      158     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        2     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       29     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        0     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   0      185     212
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                   1        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 0       16     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                 1        1     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   0       94     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       19     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   0       27     111
6 months    ki0047075b-MAL-ED       PERU           Food Secure                   1        0     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       28     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 0       56     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                 1        0     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      128     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        1     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       79     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        2     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       80     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        0     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      412     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        5     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       39     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        0     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       84     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      390     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                   1        6     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       76     546
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        0     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       73     546
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        1     546
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     8282   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      114   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     5515   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       75   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     2737   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       41   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2429    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       16    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1713    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       15    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      620    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1        2    4795
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   0      161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                   1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          0        4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure          1        0     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 0       29     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                 1        0     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   0        3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                   1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 0      115     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                 1        0     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   0      190     212
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                   1        0     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          0        3     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure          1        2     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 0       17     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                 1        0     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   0       94     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                   1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          0       15     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          1        0     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 0       19     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                 1        0     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   0       26     107
24 months   ki0047075b-MAL-ED       PERU           Food Secure                   1        0     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          0       27     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure          1        0     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 0       53     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                 1        1     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   0      129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                   1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 0       81     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   0       67     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                   1        1     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          0      319     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          1        8     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 0       32     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                 1        1     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   0      330     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   1        4     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 0       56     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                 1        0     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   0      331     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                   1       10     477
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          0       65     477
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure          1        2     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 0       67     477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                 1        2     477
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   0     3699    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                   1      158    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          0     2657    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure          1       96    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 0     1512    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                 1       68    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   0     2319    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                   1       70    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          0     1659    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure          1       40    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 0      589    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                 1       19    4696


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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e04998e8-e9c1-4f4b-abf2-3a1e7251e9d4/403ea49b-23ec-4af3-8bae-e6777afa606f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e04998e8-e9c1-4f4b-abf2-3a1e7251e9d4/403ea49b-23ec-4af3-8bae-e6777afa606f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e04998e8-e9c1-4f4b-abf2-3a1e7251e9d4/403ea49b-23ec-4af3-8bae-e6777afa606f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e04998e8-e9c1-4f4b-abf2-3a1e7251e9d4/403ea49b-23ec-4af3-8bae-e6777afa606f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0143338   0.0105929   0.0180747
Birth       kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0179592   0.0130634   0.0228551
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0168063   0.0113195   0.0222930
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0135277   0.0105086   0.0165468
6 months    kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0125452   0.0095620   0.0155284
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0152682   0.0094774   0.0210590
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure            NA                0.0401640   0.0334222   0.0469059
24 months   kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   NA                0.0347535   0.0265287   0.0429784
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          NA                0.0388604   0.0296967   0.0480241
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure            NA                0.0291359   0.0213991   0.0368726
24 months   kiGH5241-JiVitA-4   BANGLADESH   Mildly Food Insecure   NA                0.0239201   0.0152290   0.0326112
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Insecure          NA                0.0309662   0.0179546   0.0439779


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0161523   0.0134079   0.0188967
6 months    kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0137199   0.0116432   0.0157966
24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.0393162   0.0348276   0.0438049
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0274702   0.0222302   0.0327101


### Parameter: RR


agecat      studyid             country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       1.2529300   0.8735286   1.797117
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.1724936   0.7691215   1.787418
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.9273719   0.6792174   1.266190
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       1.1286635   0.7270863   1.752036
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH   Mildly Food Insecure   Food Secure       0.8652900   0.6450558   1.160716
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Insecure          Food Secure       0.9675423   0.7218603   1.296841
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   Mildly Food Insecure   Food Secure       0.8209855   0.5174139   1.302666
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Insecure          Food Secure       1.0628220   0.6581843   1.716222


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0018186   -0.0008819   0.0045190
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0001922   -0.0018188   0.0022032
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                -0.0008478   -0.0057363   0.0040408
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure          NA                -0.0016657   -0.0068844   0.0035530


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.1125875   -0.0714158   0.2649904
6 months    kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                 0.0140068   -0.1442654   0.1503871
24 months   kiGH5241-JiVitA-3   BANGLADESH   Food Secure          NA                -0.0215634   -0.1537245   0.0954584
24 months   kiGH5241-JiVitA-4   BANGLADESH   Food Secure          NA                -0.0606361   -0.2678025   0.1126781

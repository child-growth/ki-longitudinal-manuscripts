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

**Outcome Variable:** sstunted

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

agecat      studyid                 country        hfoodsec                sstunted   n_cell       n  outcome_variable 
----------  ----------------------  -------------  ---------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      140     172  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        4     172  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        3     172  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        1     172  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       23     172  sstunted         
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        1     172  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        0      28  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0      28  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0        4      28  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0      28  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0       22      28  sstunted         
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        2      28  sstunted         
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    0       32      37  sstunted         
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                    1        2      37  sstunted         
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        1      37  sstunted         
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0      37  sstunted         
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  0        2      37  sstunted         
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure                  1        0      37  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    0       10      14  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0      14  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0        1      14  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0      14  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  0        3      14  sstunted         
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        0      14  sstunted         
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    0       24      91  sstunted         
Birth       ki0047075b-MAL-ED       PERU           Food Secure                    1        0      91  sstunted         
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       23      91  sstunted         
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        0      91  sstunted         
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  0       44      91  sstunted         
Birth       ki0047075b-MAL-ED       PERU           Food Insecure                  1        0      91  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0       45      88  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        0      88  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0        9      88  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0      88  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       33      88  sstunted         
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        1      88  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       89     608  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        1     608  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      462     608  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       16     608  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       38     608  sstunted         
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        2     608  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      437     732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1        2     732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      205     732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        4     732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       80     732  sstunted         
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        4     732  sstunted         
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      460     672  sstunted         
Birth       ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       17     672  sstunted         
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0      101     672  sstunted         
Birth       ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        5     672  sstunted         
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       81     672  sstunted         
Birth       ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        8     672  sstunted         
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     6342   14364  sstunted         
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      609   14364  sstunted         
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     4381   14364  sstunted         
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      496   14364  sstunted         
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2258   14364  sstunted         
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      278   14364  sstunted         
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     1304    2810  sstunted         
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      129    2810  sstunted         
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0      941    2810  sstunted         
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       77    2810  sstunted         
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      332    2810  sstunted         
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       27    2810  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      155     193  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1        5     193  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        4     193  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        0     193  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       29     193  sstunted         
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        0     193  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        3     129  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     129  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0      115     129  sstunted         
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        0     129  sstunted         
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                    0      183     212  sstunted         
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                    1        7     212  sstunted         
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        5     212  sstunted         
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     212  sstunted         
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                  0       16     212  sstunted         
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                  1        1     212  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                    0       94     128  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                    1        0     128  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0       15     128  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0     128  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       19     128  sstunted         
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        0     128  sstunted         
6 months    ki0047075b-MAL-ED       PERU           Food Secure                    0       24     111  sstunted         
6 months    ki0047075b-MAL-ED       PERU           Food Secure                    1        3     111  sstunted         
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       27     111  sstunted         
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        1     111  sstunted         
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  0       53     111  sstunted         
6 months    ki0047075b-MAL-ED       PERU           Food Insecure                  1        3     111  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      127     228  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1        2     228  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     228  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        1     228  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       78     228  sstunted         
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        3     228  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       77     537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        3     537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      391     537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       26     537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       34     537  sstunted         
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1        6     537  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      416     715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       11     715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      196     715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        8     715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       80     715  sstunted         
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        4     715  sstunted         
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      386     546  sstunted         
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       10     546  sstunted         
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       71     546  sstunted         
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        5     546  sstunted         
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       71     546  sstunted         
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1        3     546  sstunted         
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     7979   16791  sstunted         
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      436   16791  sstunted         
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     5248   16791  sstunted         
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      354   16791  sstunted         
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     2545   16791  sstunted         
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      229   16791  sstunted         
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2308    4793  sstunted         
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      134    4793  sstunted         
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1632    4793  sstunted         
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1       97    4793  sstunted         
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      585    4793  sstunted         
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       37    4793  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    0      142     194  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                    1       19     194  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           0        2     194  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure           1        2     194  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  0       23     194  sstunted         
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                  1        6     194  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                    0        3     129  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                    1        0     129  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                  0      115     129  sstunted         
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                  1        0     129  sstunted         
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    0      165     212  sstunted         
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                    1       25     212  sstunted         
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           0        5     212  sstunted         
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure           1        0     212  sstunted         
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                  0       14     212  sstunted         
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                  1        3     212  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                    0       91     128  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                    1        3     128  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           0       15     128  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure           1        0     128  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                  0       16     128  sstunted         
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                  1        3     128  sstunted         
24 months   ki0047075b-MAL-ED       PERU           Food Secure                    0       23     107  sstunted         
24 months   ki0047075b-MAL-ED       PERU           Food Secure                    1        3     107  sstunted         
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure           0       25     107  sstunted         
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure           1        2     107  sstunted         
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                  0       50     107  sstunted         
24 months   ki0047075b-MAL-ED       PERU           Food Insecure                  1        4     107  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    0      116     228  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                    1       13     228  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14     228  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4     228  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  0       73     228  sstunted         
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                  1        8     228  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    0       60     429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                    1        8     429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           0      257     429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure           1       71     429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  0       17     429  sstunted         
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                  1       16     429  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    0      313     514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                    1       21     514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114     514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10     514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  0       51     514  sstunted         
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                  1        5     514  sstunted         
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    0      309     478  sstunted         
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                    1       33     478  sstunted         
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           0       59     478  sstunted         
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure           1        8     478  sstunted         
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  0       59     478  sstunted         
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                  1       10     478  sstunted         
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    0     3359    8214  sstunted         
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    1      516    8214  sstunted         
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           0     2331    8214  sstunted         
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           1      430    8214  sstunted         
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  0     1240    8214  sstunted         
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                  1      338    8214  sstunted         
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    0     2165    4713  sstunted         
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                    1      234    4713  sstunted         
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           0     1542    4713  sstunted         
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure           1      163    4713  sstunted         
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  0      558    4713  sstunted         
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                  1       51    4713  sstunted         


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




# Results Detail

## Results Plots
![](/tmp/1cd2fb16-1b0f-43bd-939c-c16035ed2a5e/9bfca0cb-7604-4a5e-ba4d-31e243533696/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1cd2fb16-1b0f-43bd-939c-c16035ed2a5e/9bfca0cb-7604-4a5e-ba4d-31e243533696/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1cd2fb16-1b0f-43bd-939c-c16035ed2a5e/9bfca0cb-7604-4a5e-ba4d-31e243533696/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1cd2fb16-1b0f-43bd-939c-c16035ed2a5e/9bfca0cb-7604-4a5e-ba4d-31e243533696/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0356394   0.0189901   0.0522888
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.0471698   0.0067813   0.0875584
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.0898876   0.0304209   0.1493544
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0876133   0.0803919   0.0948347
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1017019   0.0923024   0.1111013
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.1096215   0.0960378   0.1232051
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0900209   0.0720970   0.1079449
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0756385   0.0570968   0.0941802
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0752089   0.0523768   0.0980410
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.0518122   0.0469616   0.0566629
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.0631917   0.0565245   0.0698589
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.0825523   0.0718451   0.0932594
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0548731   0.0459034   0.0638427
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0561018   0.0438111   0.0683925
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0594855   0.0410416   0.0779295
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.1176471   0.0409794   0.1943147
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.2164634   0.1718424   0.2610845
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.4848485   0.3141348   0.6555622
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.0628743   0.0368167   0.0889318
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0806452   0.0326728   0.1286175
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.0892857   0.0145275   0.1640439
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.0964912   0.0651656   0.1278169
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.1194030   0.0416778   0.1971281
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.1449275   0.0617789   0.2280762
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.1331613   0.1209224   0.1454002
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.1557407   0.1405812   0.1709002
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.2141952   0.1926103   0.2357801
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.0975406   0.0836927   0.1113886
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.0956012   0.0799765   0.1112258
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.0837438   0.0587678   0.1087199


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0446429   0.0290169   0.0602688
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0962824   0.0908494   0.1017154
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0829181   0.0711515   0.0946848
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0606873   0.0568242   0.0645503
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0559149   0.0491257   0.0627040
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1066946   0.0789894   0.1343997
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1563185   0.1472145   0.1654224
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0950562   0.0854670   0.1046455


### Parameter: RR


agecat      studyid                 country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ---------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.3235294   0.4990314   3.510260
Birth       ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       2.5221414   1.1221261   5.668880
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1608041   1.0296678   1.308642
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.2511966   1.0778050   1.452482
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8402324   0.6126505   1.152354
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8354603   0.5801398   1.203148
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.2196291   1.0642499   1.397694
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.5932967   1.3587045   1.868393
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0223924   0.7785173   1.342663
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       1.0840572   0.7610886   1.544078
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       1.8399390   0.9288873   3.644549
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       4.1212121   1.9648904   8.643937
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.2826421   0.6212197   2.648291
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4200680   0.5579185   3.614494
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.2374491   0.5978826   2.561172
24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       1.5019762   0.7769123   2.903716
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       1.1695642   1.0261573   1.333012
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       1.6085394   1.4083425   1.837195
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.9801163   0.7909662   1.214499
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8585533   0.6166659   1.195321


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0090034   -0.0023034   0.0203103
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0086691    0.0033381   0.0140000
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0071028   -0.0186524   0.0044468
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0088750    0.0052395   0.0125105
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0010418   -0.0056655   0.0077491
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.1037982    0.0292197   0.1783766
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0071647   -0.0096965   0.0240259
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0102033   -0.0083620   0.0287687
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0231572    0.0142040   0.0321104
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0024844   -0.0117524   0.0067836


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.2016771   -0.0837182   0.4119141
Birth       kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.0900381    0.0332434   0.1434962
Birth       kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0856602   -0.2323599   0.0435764
6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1462421    0.0850540   0.2033381
6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0186323   -0.1086877   0.1313310
24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                 0.4687307    0.0121611   0.7142782
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1022954   -0.1713644   0.3120215
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0956312   -0.0945510   0.2527686
24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                 0.1481411    0.0889516   0.2034851
24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0261363   -0.1282308   0.0667196

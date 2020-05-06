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

agecat      studyid      country        hfoodsec                sstunted   n_cell       n  outcome_variable 
----------  -----------  -------------  ---------------------  ---------  -------  ------  -----------------
Birth       GMS-Nepal    NEPAL          Food Secure                    0      460     672  sstunted         
Birth       GMS-Nepal    NEPAL          Food Secure                    1       17     672  sstunted         
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure           0      101     672  sstunted         
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure           1        5     672  sstunted         
Birth       GMS-Nepal    NEPAL          Food Insecure                  0       81     672  sstunted         
Birth       GMS-Nepal    NEPAL          Food Insecure                  1        8     672  sstunted         
Birth       JiVitA-3     BANGLADESH     Food Secure                    0     6342   14364  sstunted         
Birth       JiVitA-3     BANGLADESH     Food Secure                    1      609   14364  sstunted         
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure           0     4381   14364  sstunted         
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure           1      496   14364  sstunted         
Birth       JiVitA-3     BANGLADESH     Food Insecure                  0     2258   14364  sstunted         
Birth       JiVitA-3     BANGLADESH     Food Insecure                  1      278   14364  sstunted         
Birth       JiVitA-4     BANGLADESH     Food Secure                    0     1304    2810  sstunted         
Birth       JiVitA-4     BANGLADESH     Food Secure                    1      129    2810  sstunted         
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure           0      941    2810  sstunted         
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure           1       77    2810  sstunted         
Birth       JiVitA-4     BANGLADESH     Food Insecure                  0      332    2810  sstunted         
Birth       JiVitA-4     BANGLADESH     Food Insecure                  1       27    2810  sstunted         
Birth       MAL-ED       BANGLADESH     Food Secure                    0      140     172  sstunted         
Birth       MAL-ED       BANGLADESH     Food Secure                    1        4     172  sstunted         
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure           0        3     172  sstunted         
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure           1        1     172  sstunted         
Birth       MAL-ED       BANGLADESH     Food Insecure                  0       23     172  sstunted         
Birth       MAL-ED       BANGLADESH     Food Insecure                  1        1     172  sstunted         
Birth       MAL-ED       BRAZIL         Food Secure                    0        0      28  sstunted         
Birth       MAL-ED       BRAZIL         Food Secure                    1        0      28  sstunted         
Birth       MAL-ED       BRAZIL         Mildly Food Insecure           0        4      28  sstunted         
Birth       MAL-ED       BRAZIL         Mildly Food Insecure           1        0      28  sstunted         
Birth       MAL-ED       BRAZIL         Food Insecure                  0       22      28  sstunted         
Birth       MAL-ED       BRAZIL         Food Insecure                  1        2      28  sstunted         
Birth       MAL-ED       INDIA          Food Secure                    0       32      37  sstunted         
Birth       MAL-ED       INDIA          Food Secure                    1        2      37  sstunted         
Birth       MAL-ED       INDIA          Mildly Food Insecure           0        1      37  sstunted         
Birth       MAL-ED       INDIA          Mildly Food Insecure           1        0      37  sstunted         
Birth       MAL-ED       INDIA          Food Insecure                  0        2      37  sstunted         
Birth       MAL-ED       INDIA          Food Insecure                  1        0      37  sstunted         
Birth       MAL-ED       NEPAL          Food Secure                    0       10      14  sstunted         
Birth       MAL-ED       NEPAL          Food Secure                    1        0      14  sstunted         
Birth       MAL-ED       NEPAL          Mildly Food Insecure           0        1      14  sstunted         
Birth       MAL-ED       NEPAL          Mildly Food Insecure           1        0      14  sstunted         
Birth       MAL-ED       NEPAL          Food Insecure                  0        3      14  sstunted         
Birth       MAL-ED       NEPAL          Food Insecure                  1        0      14  sstunted         
Birth       MAL-ED       PERU           Food Secure                    0       24      91  sstunted         
Birth       MAL-ED       PERU           Food Secure                    1        0      91  sstunted         
Birth       MAL-ED       PERU           Mildly Food Insecure           0       23      91  sstunted         
Birth       MAL-ED       PERU           Mildly Food Insecure           1        0      91  sstunted         
Birth       MAL-ED       PERU           Food Insecure                  0       44      91  sstunted         
Birth       MAL-ED       PERU           Food Insecure                  1        0      91  sstunted         
Birth       MAL-ED       SOUTH AFRICA   Food Secure                    0       45      88  sstunted         
Birth       MAL-ED       SOUTH AFRICA   Food Secure                    1        0      88  sstunted         
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0        9      88  sstunted         
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        0      88  sstunted         
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                  0       33      88  sstunted         
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                  1        1      88  sstunted         
Birth       NIH-Birth    BANGLADESH     Food Secure                    0       89     608  sstunted         
Birth       NIH-Birth    BANGLADESH     Food Secure                    1        1     608  sstunted         
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure           0      462     608  sstunted         
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure           1       16     608  sstunted         
Birth       NIH-Birth    BANGLADESH     Food Insecure                  0       38     608  sstunted         
Birth       NIH-Birth    BANGLADESH     Food Insecure                  1        2     608  sstunted         
Birth       NIH-Crypto   BANGLADESH     Food Secure                    0      437     732  sstunted         
Birth       NIH-Crypto   BANGLADESH     Food Secure                    1        2     732  sstunted         
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      205     732  sstunted         
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        4     732  sstunted         
Birth       NIH-Crypto   BANGLADESH     Food Insecure                  0       80     732  sstunted         
Birth       NIH-Crypto   BANGLADESH     Food Insecure                  1        4     732  sstunted         
6 months    GMS-Nepal    NEPAL          Food Secure                    0      386     546  sstunted         
6 months    GMS-Nepal    NEPAL          Food Secure                    1       10     546  sstunted         
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure           0       71     546  sstunted         
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure           1        5     546  sstunted         
6 months    GMS-Nepal    NEPAL          Food Insecure                  0       71     546  sstunted         
6 months    GMS-Nepal    NEPAL          Food Insecure                  1        3     546  sstunted         
6 months    JiVitA-3     BANGLADESH     Food Secure                    0     7979   16791  sstunted         
6 months    JiVitA-3     BANGLADESH     Food Secure                    1      436   16791  sstunted         
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure           0     5248   16791  sstunted         
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure           1      354   16791  sstunted         
6 months    JiVitA-3     BANGLADESH     Food Insecure                  0     2545   16791  sstunted         
6 months    JiVitA-3     BANGLADESH     Food Insecure                  1      229   16791  sstunted         
6 months    JiVitA-4     BANGLADESH     Food Secure                    0     2308    4793  sstunted         
6 months    JiVitA-4     BANGLADESH     Food Secure                    1      134    4793  sstunted         
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure           0     1632    4793  sstunted         
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure           1       97    4793  sstunted         
6 months    JiVitA-4     BANGLADESH     Food Insecure                  0      585    4793  sstunted         
6 months    JiVitA-4     BANGLADESH     Food Insecure                  1       37    4793  sstunted         
6 months    MAL-ED       BANGLADESH     Food Secure                    0      155     193  sstunted         
6 months    MAL-ED       BANGLADESH     Food Secure                    1        5     193  sstunted         
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure           0        4     193  sstunted         
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure           1        0     193  sstunted         
6 months    MAL-ED       BANGLADESH     Food Insecure                  0       29     193  sstunted         
6 months    MAL-ED       BANGLADESH     Food Insecure                  1        0     193  sstunted         
6 months    MAL-ED       BRAZIL         Food Secure                    0        3     129  sstunted         
6 months    MAL-ED       BRAZIL         Food Secure                    1        0     129  sstunted         
6 months    MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129  sstunted         
6 months    MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129  sstunted         
6 months    MAL-ED       BRAZIL         Food Insecure                  0      115     129  sstunted         
6 months    MAL-ED       BRAZIL         Food Insecure                  1        0     129  sstunted         
6 months    MAL-ED       INDIA          Food Secure                    0      183     212  sstunted         
6 months    MAL-ED       INDIA          Food Secure                    1        7     212  sstunted         
6 months    MAL-ED       INDIA          Mildly Food Insecure           0        5     212  sstunted         
6 months    MAL-ED       INDIA          Mildly Food Insecure           1        0     212  sstunted         
6 months    MAL-ED       INDIA          Food Insecure                  0       16     212  sstunted         
6 months    MAL-ED       INDIA          Food Insecure                  1        1     212  sstunted         
6 months    MAL-ED       NEPAL          Food Secure                    0       94     128  sstunted         
6 months    MAL-ED       NEPAL          Food Secure                    1        0     128  sstunted         
6 months    MAL-ED       NEPAL          Mildly Food Insecure           0       15     128  sstunted         
6 months    MAL-ED       NEPAL          Mildly Food Insecure           1        0     128  sstunted         
6 months    MAL-ED       NEPAL          Food Insecure                  0       19     128  sstunted         
6 months    MAL-ED       NEPAL          Food Insecure                  1        0     128  sstunted         
6 months    MAL-ED       PERU           Food Secure                    0       24     111  sstunted         
6 months    MAL-ED       PERU           Food Secure                    1        3     111  sstunted         
6 months    MAL-ED       PERU           Mildly Food Insecure           0       27     111  sstunted         
6 months    MAL-ED       PERU           Mildly Food Insecure           1        1     111  sstunted         
6 months    MAL-ED       PERU           Food Insecure                  0       53     111  sstunted         
6 months    MAL-ED       PERU           Food Insecure                  1        3     111  sstunted         
6 months    MAL-ED       SOUTH AFRICA   Food Secure                    0      127     228  sstunted         
6 months    MAL-ED       SOUTH AFRICA   Food Secure                    1        2     228  sstunted         
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       17     228  sstunted         
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        1     228  sstunted         
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                  0       78     228  sstunted         
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                  1        3     228  sstunted         
6 months    NIH-Birth    BANGLADESH     Food Secure                    0       77     537  sstunted         
6 months    NIH-Birth    BANGLADESH     Food Secure                    1        3     537  sstunted         
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure           0      391     537  sstunted         
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure           1       26     537  sstunted         
6 months    NIH-Birth    BANGLADESH     Food Insecure                  0       34     537  sstunted         
6 months    NIH-Birth    BANGLADESH     Food Insecure                  1        6     537  sstunted         
6 months    NIH-Crypto   BANGLADESH     Food Secure                    0      416     715  sstunted         
6 months    NIH-Crypto   BANGLADESH     Food Secure                    1       11     715  sstunted         
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      196     715  sstunted         
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure           1        8     715  sstunted         
6 months    NIH-Crypto   BANGLADESH     Food Insecure                  0       80     715  sstunted         
6 months    NIH-Crypto   BANGLADESH     Food Insecure                  1        4     715  sstunted         
24 months   GMS-Nepal    NEPAL          Food Secure                    0      309     478  sstunted         
24 months   GMS-Nepal    NEPAL          Food Secure                    1       33     478  sstunted         
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure           0       59     478  sstunted         
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure           1        8     478  sstunted         
24 months   GMS-Nepal    NEPAL          Food Insecure                  0       59     478  sstunted         
24 months   GMS-Nepal    NEPAL          Food Insecure                  1       10     478  sstunted         
24 months   JiVitA-3     BANGLADESH     Food Secure                    0     3359    8214  sstunted         
24 months   JiVitA-3     BANGLADESH     Food Secure                    1      516    8214  sstunted         
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure           0     2331    8214  sstunted         
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure           1      430    8214  sstunted         
24 months   JiVitA-3     BANGLADESH     Food Insecure                  0     1240    8214  sstunted         
24 months   JiVitA-3     BANGLADESH     Food Insecure                  1      338    8214  sstunted         
24 months   JiVitA-4     BANGLADESH     Food Secure                    0     2165    4713  sstunted         
24 months   JiVitA-4     BANGLADESH     Food Secure                    1      234    4713  sstunted         
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure           0     1542    4713  sstunted         
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure           1      163    4713  sstunted         
24 months   JiVitA-4     BANGLADESH     Food Insecure                  0      558    4713  sstunted         
24 months   JiVitA-4     BANGLADESH     Food Insecure                  1       51    4713  sstunted         
24 months   MAL-ED       BANGLADESH     Food Secure                    0      142     194  sstunted         
24 months   MAL-ED       BANGLADESH     Food Secure                    1       19     194  sstunted         
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure           0        2     194  sstunted         
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure           1        2     194  sstunted         
24 months   MAL-ED       BANGLADESH     Food Insecure                  0       23     194  sstunted         
24 months   MAL-ED       BANGLADESH     Food Insecure                  1        6     194  sstunted         
24 months   MAL-ED       BRAZIL         Food Secure                    0        3     129  sstunted         
24 months   MAL-ED       BRAZIL         Food Secure                    1        0     129  sstunted         
24 months   MAL-ED       BRAZIL         Mildly Food Insecure           0       11     129  sstunted         
24 months   MAL-ED       BRAZIL         Mildly Food Insecure           1        0     129  sstunted         
24 months   MAL-ED       BRAZIL         Food Insecure                  0      115     129  sstunted         
24 months   MAL-ED       BRAZIL         Food Insecure                  1        0     129  sstunted         
24 months   MAL-ED       INDIA          Food Secure                    0      165     212  sstunted         
24 months   MAL-ED       INDIA          Food Secure                    1       25     212  sstunted         
24 months   MAL-ED       INDIA          Mildly Food Insecure           0        5     212  sstunted         
24 months   MAL-ED       INDIA          Mildly Food Insecure           1        0     212  sstunted         
24 months   MAL-ED       INDIA          Food Insecure                  0       14     212  sstunted         
24 months   MAL-ED       INDIA          Food Insecure                  1        3     212  sstunted         
24 months   MAL-ED       NEPAL          Food Secure                    0       91     128  sstunted         
24 months   MAL-ED       NEPAL          Food Secure                    1        3     128  sstunted         
24 months   MAL-ED       NEPAL          Mildly Food Insecure           0       15     128  sstunted         
24 months   MAL-ED       NEPAL          Mildly Food Insecure           1        0     128  sstunted         
24 months   MAL-ED       NEPAL          Food Insecure                  0       16     128  sstunted         
24 months   MAL-ED       NEPAL          Food Insecure                  1        3     128  sstunted         
24 months   MAL-ED       PERU           Food Secure                    0       23     107  sstunted         
24 months   MAL-ED       PERU           Food Secure                    1        3     107  sstunted         
24 months   MAL-ED       PERU           Mildly Food Insecure           0       25     107  sstunted         
24 months   MAL-ED       PERU           Mildly Food Insecure           1        2     107  sstunted         
24 months   MAL-ED       PERU           Food Insecure                  0       50     107  sstunted         
24 months   MAL-ED       PERU           Food Insecure                  1        4     107  sstunted         
24 months   MAL-ED       SOUTH AFRICA   Food Secure                    0      116     228  sstunted         
24 months   MAL-ED       SOUTH AFRICA   Food Secure                    1       13     228  sstunted         
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure           0       14     228  sstunted         
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure           1        4     228  sstunted         
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                  0       73     228  sstunted         
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                  1        8     228  sstunted         
24 months   NIH-Birth    BANGLADESH     Food Secure                    0       60     429  sstunted         
24 months   NIH-Birth    BANGLADESH     Food Secure                    1        8     429  sstunted         
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure           0      257     429  sstunted         
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure           1       71     429  sstunted         
24 months   NIH-Birth    BANGLADESH     Food Insecure                  0       17     429  sstunted         
24 months   NIH-Birth    BANGLADESH     Food Insecure                  1       16     429  sstunted         
24 months   NIH-Crypto   BANGLADESH     Food Secure                    0      313     514  sstunted         
24 months   NIH-Crypto   BANGLADESH     Food Secure                    1       21     514  sstunted         
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure           0      114     514  sstunted         
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure           1       10     514  sstunted         
24 months   NIH-Crypto   BANGLADESH     Food Insecure                  0       51     514  sstunted         
24 months   NIH-Crypto   BANGLADESH     Food Insecure                  1        5     514  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->

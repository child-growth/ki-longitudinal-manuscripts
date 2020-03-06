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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country        hfoodsec                swasted   n_cell     n
----------  -----------  -------------  ---------------------  --------  -------  ----
Birth       GMS-Nepal    NEPAL          Food Secure                   0      423   620
Birth       GMS-Nepal    NEPAL          Food Secure                   1       19   620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          0       98   620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure          1        2   620
Birth       GMS-Nepal    NEPAL          Food Insecure                 0       74   620
Birth       GMS-Nepal    NEPAL          Food Insecure                 1        4   620
Birth       MAL-ED       BANGLADESH     Food Secure                   0      133   162
Birth       MAL-ED       BANGLADESH     Food Secure                   1        5   162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          0        3   162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure          1        0   162
Birth       MAL-ED       BANGLADESH     Food Insecure                 0       19   162
Birth       MAL-ED       BANGLADESH     Food Insecure                 1        2   162
Birth       MAL-ED       BRAZIL         Food Secure                   0        0    26
Birth       MAL-ED       BRAZIL         Food Secure                   1        0    26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          0        4    26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure          1        0    26
Birth       MAL-ED       BRAZIL         Food Insecure                 0       22    26
Birth       MAL-ED       BRAZIL         Food Insecure                 1        0    26
Birth       MAL-ED       INDIA          Food Secure                   0       32    35
Birth       MAL-ED       INDIA          Food Secure                   1        0    35
Birth       MAL-ED       INDIA          Mildly Food Insecure          0        1    35
Birth       MAL-ED       INDIA          Mildly Food Insecure          1        0    35
Birth       MAL-ED       INDIA          Food Insecure                 0        2    35
Birth       MAL-ED       INDIA          Food Insecure                 1        0    35
Birth       MAL-ED       NEPAL          Food Secure                   0       10    14
Birth       MAL-ED       NEPAL          Food Secure                   1        0    14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          0        1    14
Birth       MAL-ED       NEPAL          Mildly Food Insecure          1        0    14
Birth       MAL-ED       NEPAL          Food Insecure                 0        2    14
Birth       MAL-ED       NEPAL          Food Insecure                 1        1    14
Birth       MAL-ED       PERU           Food Secure                   0       23    89
Birth       MAL-ED       PERU           Food Secure                   1        0    89
Birth       MAL-ED       PERU           Mildly Food Insecure          0       22    89
Birth       MAL-ED       PERU           Mildly Food Insecure          1        0    89
Birth       MAL-ED       PERU           Food Insecure                 0       44    89
Birth       MAL-ED       PERU           Food Insecure                 1        0    89
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   0       45    87
Birth       MAL-ED       SOUTH AFRICA   Food Secure                   1        0    87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0        9    87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0    87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 0       33    87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure                 1        0    87
Birth       NIH-Birth    BANGLADESH     Food Secure                   0       80   575
Birth       NIH-Birth    BANGLADESH     Food Secure                   1        6   575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          0      424   575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure          1       29   575
Birth       NIH-Birth    BANGLADESH     Food Insecure                 0       33   575
Birth       NIH-Birth    BANGLADESH     Food Insecure                 1        3   575
Birth       NIH-Crypto   BANGLADESH     Food Secure                   0      395   707
Birth       NIH-Crypto   BANGLADESH     Food Secure                   1       34   707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      189   707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       10   707
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 0       76   707
Birth       NIH-Crypto   BANGLADESH     Food Insecure                 1        3   707
6 months    GMS-Nepal    NEPAL          Food Secure                   0      390   546
6 months    GMS-Nepal    NEPAL          Food Secure                   1        6   546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          0       76   546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          1        0   546
6 months    GMS-Nepal    NEPAL          Food Insecure                 0       73   546
6 months    GMS-Nepal    NEPAL          Food Insecure                 1        1   546
6 months    MAL-ED       BANGLADESH     Food Secure                   0      158   193
6 months    MAL-ED       BANGLADESH     Food Secure                   1        2   193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          0        4   193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          1        0   193
6 months    MAL-ED       BANGLADESH     Food Insecure                 0       29   193
6 months    MAL-ED       BANGLADESH     Food Insecure                 1        0   193
6 months    MAL-ED       BRAZIL         Food Secure                   0        3   129
6 months    MAL-ED       BRAZIL         Food Secure                   1        0   129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          0       11   129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure          1        0   129
6 months    MAL-ED       BRAZIL         Food Insecure                 0      115   129
6 months    MAL-ED       BRAZIL         Food Insecure                 1        0   129
6 months    MAL-ED       INDIA          Food Secure                   0      185   212
6 months    MAL-ED       INDIA          Food Secure                   1        5   212
6 months    MAL-ED       INDIA          Mildly Food Insecure          0        5   212
6 months    MAL-ED       INDIA          Mildly Food Insecure          1        0   212
6 months    MAL-ED       INDIA          Food Insecure                 0       16   212
6 months    MAL-ED       INDIA          Food Insecure                 1        1   212
6 months    MAL-ED       NEPAL          Food Secure                   0       94   128
6 months    MAL-ED       NEPAL          Food Secure                   1        0   128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          0       15   128
6 months    MAL-ED       NEPAL          Mildly Food Insecure          1        0   128
6 months    MAL-ED       NEPAL          Food Insecure                 0       19   128
6 months    MAL-ED       NEPAL          Food Insecure                 1        0   128
6 months    MAL-ED       PERU           Food Secure                   0       27   111
6 months    MAL-ED       PERU           Food Secure                   1        0   111
6 months    MAL-ED       PERU           Mildly Food Insecure          0       28   111
6 months    MAL-ED       PERU           Mildly Food Insecure          1        0   111
6 months    MAL-ED       PERU           Food Insecure                 0       56   111
6 months    MAL-ED       PERU           Food Insecure                 1        0   111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   0      128   228
6 months    MAL-ED       SOUTH AFRICA   Food Secure                   1        1   228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18   228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0   228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 0       79   228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 1        2   228
6 months    NIH-Birth    BANGLADESH     Food Secure                   0       80   537
6 months    NIH-Birth    BANGLADESH     Food Secure                   1        0   537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          0      412   537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          1        5   537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 0       39   537
6 months    NIH-Birth    BANGLADESH     Food Insecure                 1        1   537
6 months    NIH-Crypto   BANGLADESH     Food Secure                   0      427   715
6 months    NIH-Crypto   BANGLADESH     Food Secure                   1        0   715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      204   715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0   715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 0       84   715
6 months    NIH-Crypto   BANGLADESH     Food Insecure                 1        0   715
24 months   GMS-Nepal    NEPAL          Food Secure                   0      331   477
24 months   GMS-Nepal    NEPAL          Food Secure                   1       10   477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       65   477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1        2   477
24 months   GMS-Nepal    NEPAL          Food Insecure                 0       67   477
24 months   GMS-Nepal    NEPAL          Food Insecure                 1        2   477
24 months   MAL-ED       BANGLADESH     Food Secure                   0      161   194
24 months   MAL-ED       BANGLADESH     Food Secure                   1        0   194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        4   194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        0   194
24 months   MAL-ED       BANGLADESH     Food Insecure                 0       29   194
24 months   MAL-ED       BANGLADESH     Food Insecure                 1        0   194
24 months   MAL-ED       BRAZIL         Food Secure                   0        3   129
24 months   MAL-ED       BRAZIL         Food Secure                   1        0   129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11   129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0   129
24 months   MAL-ED       BRAZIL         Food Insecure                 0      115   129
24 months   MAL-ED       BRAZIL         Food Insecure                 1        0   129
24 months   MAL-ED       INDIA          Food Secure                   0      190   212
24 months   MAL-ED       INDIA          Food Secure                   1        0   212
24 months   MAL-ED       INDIA          Mildly Food Insecure          0        3   212
24 months   MAL-ED       INDIA          Mildly Food Insecure          1        2   212
24 months   MAL-ED       INDIA          Food Insecure                 0       17   212
24 months   MAL-ED       INDIA          Food Insecure                 1        0   212
24 months   MAL-ED       NEPAL          Food Secure                   0       94   128
24 months   MAL-ED       NEPAL          Food Secure                   1        0   128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       15   128
24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        0   128
24 months   MAL-ED       NEPAL          Food Insecure                 0       19   128
24 months   MAL-ED       NEPAL          Food Insecure                 1        0   128
24 months   MAL-ED       PERU           Food Secure                   0       26   107
24 months   MAL-ED       PERU           Food Secure                   1        0   107
24 months   MAL-ED       PERU           Mildly Food Insecure          0       27   107
24 months   MAL-ED       PERU           Mildly Food Insecure          1        0   107
24 months   MAL-ED       PERU           Food Insecure                 0       53   107
24 months   MAL-ED       PERU           Food Insecure                 1        1   107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0      129   228
24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1        0   228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       18   228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0   228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       81   228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1        0   228
24 months   NIH-Birth    BANGLADESH     Food Secure                   0       67   428
24 months   NIH-Birth    BANGLADESH     Food Secure                   1        1   428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      319   428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1        8   428
24 months   NIH-Birth    BANGLADESH     Food Insecure                 0       32   428
24 months   NIH-Birth    BANGLADESH     Food Insecure                 1        1   428
24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      330   514
24 months   NIH-Crypto   BANGLADESH     Food Secure                   1        4   514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      124   514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        0   514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       56   514
24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1        0   514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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

* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED

















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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                 country        hfoodsec                wast_rec90d   n_cell      n
------------  ----------------------  -------------  ---------------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       31    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       49    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        2    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        6    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       11    100
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0     15
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     15
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0     15
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     15
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3     15
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       12     15
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       54    161
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       90    161
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        3    161
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        2    161
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        5    161
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        7    161
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        9     64
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       36     64
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     64
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        6     64
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     64
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1       11     64
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        6     18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     18
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        7     73
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       38     73
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2     73
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     73
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        4     73
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       21     73
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       21    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       26    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      161    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      186    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       20    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        7    421
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       65    310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      116    310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37    310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       49    310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       15    310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       28    310
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      201    624
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      251    624
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       37    624
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       42    624
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       46    624
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       47    624
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1604   5644
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1031   5644
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1185   5644
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      714   5644
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      729   5644
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   5644
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      763   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      265   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      561   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      204   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      200   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       60   2053
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0        8     48
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       31     48
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        0     48
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     48
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        2     48
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6     48
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      9
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      9
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      9
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      9
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        0      9
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        9      9
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0       19     73
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       47     73
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     73
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     73
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0        1     73
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3     73
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0        4     28
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       16     28
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     28
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     28
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        0     28
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     28
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2      6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4      6
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        2     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       11     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        1     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       11     26
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0        7    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       20    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0       51    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      133    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0        6    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        6    223
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       10    197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      105    197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8    197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       46    197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0        3    197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       25    197
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0       76    254
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      123    254
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0        9    254
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       15    254
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       14    254
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       17    254
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0      300   2818
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1031   2818
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      232   2818
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      714   2818
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      160   2818
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   2818
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      120    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      143    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0       89    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      128    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0       35    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       34    549
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       23     52
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       18     52
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     52
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     52
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        4     52
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        5     52
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3      6
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        3      6
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       35     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       43     88
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1     88
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        4     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     88
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        5     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       20     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        0     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     36
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        7     36
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     12
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4     12
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     12
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     12
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     12
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        4     12
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        5     47
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       27     47
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     47
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     47
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        3     47
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     47
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       14    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1        6    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      110    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1       53    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       14    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        1    198
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       55    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       11    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       29    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        3    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       12    113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1        3    113
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      125    370
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      128    370
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       28    370
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       27    370
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       32    370
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       30    370
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1304   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1        0   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      953   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1        0   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      569   2826
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1        0   2826
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      643   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      122   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      472   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1       76   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      165   1504
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       26   1504


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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/f2f17e50-ef50-416b-9014-1f6d108f23e4/5cce6dd3-dc0e-47ad-8706-fffc074f0c3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2f17e50-ef50-416b-9014-1f6d108f23e4/5cce6dd3-dc0e-47ad-8706-fffc074f0c3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2f17e50-ef50-416b-9014-1f6d108f23e4/5cce6dd3-dc0e-47ad-8706-fffc074f0c3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2f17e50-ef50-416b-9014-1f6d108f23e4/5cce6dd3-dc0e-47ad-8706-fffc074f0c3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.6452432   0.5751124   0.7153739
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5833217   0.4743220   0.6923213
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6579425   0.5131447   0.8027404
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5552611   0.5047258   0.6057964
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5347428   0.3989216   0.6705640
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.5032887   0.3950156   0.6115618
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.3863147   0.3668297   0.4057998
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.3778959   0.3545301   0.4012618
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3479149   0.3191721   0.3766576
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2582354   0.2304005   0.2860704
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2678657   0.2364732   0.2992583
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2229212   0.1722959   0.2735465
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.6180905   0.5500694   0.6861115
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.6250000   0.4270268   0.8229732
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.5483871   0.3717297   0.7250445
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.7719128   0.7481435   0.7956820
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.7551500   0.7254846   0.7848154
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.7100083   0.6704201   0.7495966
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.5440294   0.4836151   0.6044438
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.5889908   0.5233639   0.6546177
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.4930903   0.3734505   0.6127301
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5055367   0.4380206   0.5730528
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5092519   0.3507504   0.6677535
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4590603   0.3349578   0.5831628
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1610487   0.1350614   0.1870361
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1389356   0.1105279   0.1673433
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1333397   0.0844769   0.1822024


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5448718   0.5019351   0.5878085
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.3766832   0.3641564   0.3892100
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2576717   0.2382743   0.2770691
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.6102362   0.5496896   0.6707828
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.7544358   0.7385442   0.7703274
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5555556   0.5139520   0.5971591
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5000000   0.4445928   0.5554072
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1489362   0.1312684   0.1666040


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9689648   0.6988560   1.3434709
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.4686610   0.2166940   1.0136097
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9040339   0.7278600   1.1228496
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0196815   0.7973301   1.3040401
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9630474   0.7351032   1.2616738
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9064001   0.7174512   1.1451107
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9782074   0.9032309   1.0594076
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9005995   0.8175240   0.9921170
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0372927   0.8849699   1.2158336
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8632478   0.6716042   1.1095773
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0111789   0.7230962   1.4140341
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8872279   0.6312344   1.2470381
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9782841   0.9306309   1.0283775
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9198039   0.8630271   0.9803159
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0826451   0.9250051   1.2671501
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9063669   0.6940522   1.1836298
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0073490   0.7177674   1.4137616
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9080651   0.6715971   1.2277930
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8626930   0.6647788   1.1195292
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8279460   0.5547721   1.2356326


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012   0.1265982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0226625   -0.0691622   0.0238371
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0103893   -0.0374650   0.0166864
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0096315   -0.0241599   0.0048969
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0005637   -0.0198309   0.0187034
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204   0.1288479
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0078542   -0.0401588   0.0244504
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0174770   -0.0358217   0.0008677
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0115261   -0.0319802   0.0550324
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0055367   -0.0439285   0.0328550
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0121126   -0.0298184   0.0055933


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141   0.2026961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0364009   -0.1140355   0.0358235
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0190674   -0.0700301   0.0294681
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0255693   -0.0648545   0.0122665
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0021879   -0.0798157   0.0698593
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555   0.1591214
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0128708   -0.0672611   0.0387476
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0231656   -0.0477984   0.0008880
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0207470   -0.0608097   0.0960335
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0110734   -0.0908538   0.0628721
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0813272   -0.2065716   0.0309165

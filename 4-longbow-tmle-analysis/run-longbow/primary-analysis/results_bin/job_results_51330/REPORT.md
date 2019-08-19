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
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       48    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        2    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        7    100
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       11    100
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3     14
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       11     14
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       54    159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       88    159
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        3    159
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        2    159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        6    159
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        6    159
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        9     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       35     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        5     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     62
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1       11     62
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        6     18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     18
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     18
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     18
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        6     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       38     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        4     70
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       19     70
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       21    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       26    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      161    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      186    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       20    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        7    421
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       65    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      116    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       50    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       15    311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       28    311
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      182    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      206    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       32    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       40    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       45    544
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       39    544
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1605   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1032   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1185   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      716   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      729   5648
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   5648
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      763   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      265   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      561   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      204   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      200   2053
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       60   2053
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0        8     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       30     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        0     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        2     47
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6     47
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        0      8
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        8      8
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0       19     71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       45     71
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     71
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0        1     71
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3     71
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0        4     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       15     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        2     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        0     26
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     26
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2      6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0        0      6
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4      6
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        1     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       11     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        1     24
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     24
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0        7    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       20    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0       51    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      133    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0        6    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        6    223
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       10    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      105    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       47    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0        3    198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       25    198
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0       57    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1       78    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0        4    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       13    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       12    173
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1        9    173
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0      301   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1032   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      232   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      716   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      160   2822
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   2822
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      120    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      143    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0       89    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      128    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0       35    549
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       34    549
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       23     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       18     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        5     53
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        5     53
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
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        5     88
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3     88
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        5     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       27     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        3     46
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1        9     46
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
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      125    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      128    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       28    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       27    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       33    371
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       30    371
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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/843247f8-b6fa-4382-bd68-0f7adbef0e62/2442bd71-af04-4bb5-874b-81edced16e7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/843247f8-b6fa-4382-bd68-0f7adbef0e62/2442bd71-af04-4bb5-874b-81edced16e7e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/843247f8-b6fa-4382-bd68-0f7adbef0e62/2442bd71-af04-4bb5-874b-81edced16e7e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/843247f8-b6fa-4382-bd68-0f7adbef0e62/2442bd71-af04-4bb5-874b-81edced16e7e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.6420385   0.5722170   0.7118600
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5709491   0.4634791   0.6784190
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6509582   0.5042610   0.7976553
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5327641   0.4786680   0.5868602
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5446705   0.4070669   0.6822740
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4671204   0.3548511   0.5793897
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.3856744   0.3663027   0.4050462
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.3763404   0.3530796   0.3996012
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3474748   0.3190134   0.3759362
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2582312   0.2303480   0.2861145
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2699969   0.2385758   0.3014180
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2275715   0.1766118   0.2785311
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.7706205   0.7468682   0.7943729
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.7544016   0.7247392   0.7840641
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.7169913   0.6780306   0.7559520
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.5447452   0.4841695   0.6053208
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.5893283   0.5238026   0.6548540
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.4925572   0.3747035   0.6104109
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5038396   0.4355937   0.5720856
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4902657   0.3292747   0.6512567
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4663020   0.3355230   0.5970810
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1599486   0.1342131   0.1856840
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1394580   0.1111295   0.1677865
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1343901   0.0851638   0.1836164


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5238971   0.4781525   0.5696416
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.3769476   0.3644210   0.3894742
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2576717   0.2382743   0.2770691
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.7544295   0.7385490   0.7703099
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5555556   0.5139520   0.5971591
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4986523   0.4432451   0.5540595
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1489362   0.1312684   0.1666040


### Parameter: RR


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9689648   0.6988560   1.3434709
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.4686610   0.2166940   1.0136097
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.8892754   0.7151460   1.1058034
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0138927   0.7888914   1.3030671
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0223483   0.7785136   1.3425534
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8767866   0.6752512   1.1384722
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9757982   0.9011411   1.0566404
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9009536   0.8184117   0.9918204
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0455625   0.8925968   1.2247422
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8812701   0.6874543   1.1297287
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9789534   0.9312434   1.0291079
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9304077   0.8740686   0.9903783
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0818421   0.9241640   1.2664228
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9041974   0.6945950   1.1770500
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9730591   0.6821371   1.3880552
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9254968   0.6777835   1.2637433
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8718928   0.6727765   1.1299399
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8402082   0.5631960   1.2534710


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012   0.1265982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0182443   -0.0644821   0.0279935
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0088670   -0.0383944   0.0206603
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0087269   -0.0231343   0.0056806
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0005595   -0.0198239   0.0187048
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204   0.1288479
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0161911   -0.0344655   0.0020834
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0108104   -0.0328974   0.0545182
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0051873   -0.0440444   0.0336697
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0110124   -0.0285149   0.0064901


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141   0.2026961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0292473   -0.1062472   0.0423930
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0169252   -0.0749196   0.0379404
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0231514   -0.0620798   0.0143502
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0021715   -0.0797872   0.0698650
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555   0.1591214
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0214613   -0.0459955   0.0024974
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0194587   -0.0624846   0.0950822
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0104027   -0.0913971   0.0645809
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0739404   -0.1977997   0.0371111

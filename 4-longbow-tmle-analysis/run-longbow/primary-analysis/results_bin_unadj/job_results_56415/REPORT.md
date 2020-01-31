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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country        hfoodsec                wast_rec90d   n_cell      n  outcome_variable 
------------  ----------------------  -------------  ---------------------  ------------  -------  -----  -----------------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       31    100  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       49    100  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1    100  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        2    100  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        6    100  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1       11    100  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0     15  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0     15  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0     15  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0     15  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3     15  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1       12     15  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       54    161  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       90    161  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        3    161  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        2    161  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        5    161  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        7    161  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        9     64  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       36     64  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     64  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        6     64  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     64  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1       11     64  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     18  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        6     18  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     18  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     18  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     18  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        8     18  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        7     73  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       38     73  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2     73  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     73  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        4     73  wast_rec90d      
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       21     73  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       21    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       26    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      161    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      186    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       20    421  wast_rec90d      
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        7    421  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       65    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      116    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       49    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       15    310  wast_rec90d      
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       28    310  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      201    624  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      251    624  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       37    624  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       42    624  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       46    624  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       47    624  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1604   5644  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1031   5644  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0     1185   5644  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      714   5644  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      729   5644  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   5644  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      763   2053  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      265   2053  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      561   2053  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      204   2053  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      200   2053  wast_rec90d      
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       60   2053  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0        8     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       31     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        0     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        2     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        6     48  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        0      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        9      9  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       0       19     73  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                       1       47     73  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        2     73  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     73  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     0        1     73  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                     1        3     73  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       0        4     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                       1       16     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        1     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        0     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        4     28  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       0        0      6  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                       1        2      6  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0      6  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0      6  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     0        0      6  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                     1        4      6  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        2     26  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       11     26  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     26  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0     26  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        1     26  wast_rec90d      
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       11     26  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0        7    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1       20    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0       51    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1      133    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0        6    223  wast_rec90d      
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        6    223  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       10    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1      105    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       46    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0        3    197  wast_rec90d      
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1       25    197  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       0       76    254  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      123    254  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0        9    254  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       15    254  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       14    254  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       17    254  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0      300   2818  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1     1031   2818  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      232   2818  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1      714   2818  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      160   2818  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1      381   2818  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      120    549  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      143    549  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0       89    549  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1      128    549  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0       35    549  wast_rec90d      
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       34    549  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       0       23     52  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                       1       18     52  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     52  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     52  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     0        4     52  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                     1        5     52  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       0        0      6  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                       1        0      6  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              0        0      6  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure              1        0      6  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     0        3      6  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                     1        3      6  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       0       35     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                       1       43     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              0        1     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure              1        1     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     0        4     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                     1        4     88  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       0        5     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                       1       20     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              0        0     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure              1        3     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     0        1     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                     1        7     36  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       0        2     12  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU           Food Secure                       1        4     12  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              0        0     12  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure              1        0     12  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     0        2     12  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                     1        4     12  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       0        5     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                       1       27     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     0        3     47  wast_rec90d      
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     47  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       0       14    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                       1        6    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              0      110    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure              1       53    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     0       14    198  wast_rec90d      
6-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                     1        1    198  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       0       55    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                       1       11    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       29    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        3    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     0       12    113  wast_rec90d      
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                     1        3    113  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       0      125    370  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                       1      128    370  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              0       28    370  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure              1       27    370  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     0       32    370  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                     1       30    370  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       0     1304   2826  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                       1        0   2826  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              0      953   2826  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure              1        0   2826  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     0      569   2826  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                     1        0   2826  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       0      643   1504  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                       1      122   1504  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              0      472   1504  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure              1       76   1504  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     0      165   1504  wast_rec90d      
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                     1       26   1504  wast_rec90d      


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
![](/tmp/a22eedda-7637-4313-aa76-aa33529460f2/1ca6a13b-c4f4-4058-81e4-c432b64edb74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a22eedda-7637-4313-aa76-aa33529460f2/1ca6a13b-c4f4-4058-81e4-c432b64edb74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a22eedda-7637-4313-aa76-aa33529460f2/1ca6a13b-c4f4-4058-81e4-c432b64edb74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a22eedda-7637-4313-aa76-aa33529460f2/1ca6a13b-c4f4-4058-81e4-c432b64edb74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure            NA                0.6408840   0.5711045   0.7106635
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5697674   0.4629077   0.6766272
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6511628   0.5085212   0.7938043
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5553097   0.5048934   0.6057261
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.5316456   0.4071454   0.6561458
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.5053763   0.3979319   0.6128208
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.3912713   0.3726283   0.4099144
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.3759874   0.3543278   0.3976469
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.3432432   0.3164520   0.3700345
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.2577821   0.2298644   0.2856998
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.2666667   0.2350779   0.2982554
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.2307692   0.1795409   0.2819975
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.6180905   0.5500694   0.6861115
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.6250000   0.4270268   0.8229732
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.5483871   0.3717297   0.7250445
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            NA                0.7746056   0.7521459   0.7970652
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   NA                0.7547569   0.7273705   0.7821432
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          NA                0.7042514   0.6657740   0.7427288
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.5437262   0.4834746   0.6039779
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.5898618   0.5243598   0.6553637
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.4927536   0.3746825   0.6108248
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            NA                0.5059289   0.4389523   0.5729054
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   NA                0.4909091   0.3400895   0.6417287
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          NA                0.4838710   0.3540881   0.6136538
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            NA                0.1594771   0.1338872   0.1850670
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   NA                0.1386861   0.1107130   0.1666593
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          NA                0.1361257   0.0871830   0.1850683


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
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.8890337   0.7154757   1.1046929
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0160385   0.7952953   1.2980514
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9573856   0.7447074   1.2308020
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9100801   0.7222117   1.1468186
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9609376   0.8917156   1.0355332
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.8772512   0.8005831   0.9612614
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0344654   0.8810639   1.2145755
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8952104   0.6992837   1.1460324
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       1.0111789   0.7230962   1.4140341
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.8872279   0.6312344   1.2470381
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Mildly Food Insecure   Food Secure       0.9743757   0.9301540   1.0206998
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Insecure          Food Secure       0.9091742   0.8546429   0.9671849
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       1.0848506   0.9273394   1.2691156
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.9062532   0.6959801   1.1800550
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure   Food Secure       0.9703125   0.6944632   1.3557324
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Insecure          Food Secure       0.9564012   0.7090245   1.2900870
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Mildly Food Insecure   Food Secure       0.8696303   0.6720162   1.1253550
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Insecure          Food Secure       0.8535748   0.5757612   1.2654377


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012    0.1265982
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0183033   -0.0642942    0.0276876
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0104379   -0.0370185    0.0161426
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0145881   -0.0280101   -0.0011662
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0001104   -0.0194805    0.0192597
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204    0.1288479
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0078542   -0.0401588    0.0244504
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0201698   -0.0369170   -0.0034226
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0118293   -0.0315636    0.0552222
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0059289   -0.0437445    0.0318868
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0105410   -0.0279067    0.0068248


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141    0.2026961
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0293991   -0.1061298    0.0420088
0-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0191567   -0.0691565    0.0285048
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0387279   -0.0749604   -0.0037166
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0004285   -0.0784971    0.0719891
0-6 months    ki1017093-NIH-Birth     BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555    0.1591214
0-6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0128708   -0.0672611    0.0387476
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   Food Secure          NA                -0.0267349   -0.0492131   -0.0047384
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                 0.0212928   -0.0600412    0.0963863
6-24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                -0.0118577   -0.0904043    0.0610308
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   Food Secure          NA                -0.0707750   -0.1936685    0.0394661

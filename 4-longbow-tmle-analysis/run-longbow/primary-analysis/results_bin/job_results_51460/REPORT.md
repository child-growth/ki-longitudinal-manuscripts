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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        perdiar6    pers_wast   n_cell     n
------------  ----------------------  -----------------------------  ---------  ----------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  0       69   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  1        4   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       90   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        6   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       76   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        3   248
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  0      198   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  1        2   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   217
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                  0       48   241
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                  1        4   241
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      118   241
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       11   241
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 0       54   241
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 1        6   241
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  0       78   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  1        3   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        1   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 0       80   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   238
0-24 months   ki0047075b-MAL-ED       PERU                           0%                  0       71   284
0-24 months   ki0047075b-MAL-ED       PERU                           0%                  1        1   284
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       93   284
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   284
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                 0      119   284
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                 1        0   284
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      203   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       58   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0       10   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   273
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                  0       38   251
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                  1        8   251
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       59   251
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1       10   251
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 0      120   251
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 1       16   251
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  0      112   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  1       12   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0      155   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1       12   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      220   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       23   534
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  0      167   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  1        4   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      253   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        5   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      205   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        6   640
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0      334   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1       11   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0      163   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        7   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      207   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1        8   730
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                  0       82   257
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                  1        5   257
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       54   257
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        6   257
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 0      101   257
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 1        9   257
0-24 months   ki1114097-CMIN          BRAZIL                         0%                  0       41   119
0-24 months   ki1114097-CMIN          BRAZIL                         0%                  1        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            0       47   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            1        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                 0       31   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                 1        0   119
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  0      240   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        8   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0      213   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        4   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0      306   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1       12   783
0-24 months   ki1114097-CMIN          PERU                           0%                  0      201   686
0-24 months   ki1114097-CMIN          PERU                           0%                  1        0   686
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            0      194   686
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            1        2   686
0-24 months   ki1114097-CMIN          PERU                           >5%                 0      288   686
0-24 months   ki1114097-CMIN          PERU                           >5%                 1        1   686
0-24 months   ki1114097-CONTENT       PERU                           0%                  0      115   215
0-24 months   ki1114097-CONTENT       PERU                           0%                  1        0   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            0       43   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            1        0   215
0-24 months   ki1114097-CONTENT       PERU                           >5%                 0       57   215
0-24 months   ki1114097-CONTENT       PERU                           >5%                 1        0   215
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                  0       71   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                  1        2   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       92   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        4   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       78   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        1   248
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                  0      199   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                  1        1   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   217
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                  0       47   240
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                  1        4   240
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      119   240
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       10   240
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                 0       55   240
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                 1        5   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                  0       76   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                  1        4   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        1   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                 0       80   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   237
0-6 months    ki0047075b-MAL-ED       PERU                           0%                  0       72   284
0-6 months    ki0047075b-MAL-ED       PERU                           0%                  1        0   284
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       93   284
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   284
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                 0      119   284
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                 1        0   284
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      201   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       58   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0       10   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   271
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                  0       40   240
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                  1        6   240
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       58   240
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1        8   240
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                 0      117   240
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                 1       11   240
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                  0        0   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                  1        0   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0       18   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1        1   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      140   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       10   169
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                  0      168   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                  1        1   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      251   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        6   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      204   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        7   637
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0       74   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1        0   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0       61   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        2   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      110   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1        3   250
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                  0       77   234
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                  1        2   234
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       52   234
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        2   234
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                 0       96   234
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                 1        5   234
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                  0        0    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        0    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0        2    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        0    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0        9    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1        0    11
0-6 months    ki1114097-CMIN          PERU                           0%                  0      158   558
0-6 months    ki1114097-CMIN          PERU                           0%                  1        2   558
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]            0      171   558
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]            1        4   558
0-6 months    ki1114097-CMIN          PERU                           >5%                 0      217   558
0-6 months    ki1114097-CMIN          PERU                           >5%                 1        6   558
0-6 months    ki1114097-CONTENT       PERU                           0%                  0      115   215
0-6 months    ki1114097-CONTENT       PERU                           0%                  1        0   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]            0       43   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]            1        0   215
0-6 months    ki1114097-CONTENT       PERU                           >5%                 0       57   215
0-6 months    ki1114097-CONTENT       PERU                           >5%                 1        0   215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  0       69   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  1        4   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       90   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        6   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       76   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        3   248
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  0      198   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  1        2   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   217
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                  0       48   241
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                  1        4   241
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      118   241
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       11   241
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 0       54   241
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 1        6   241
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  0       78   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  1        3   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        1   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 0       80   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   238
6-24 months   ki0047075b-MAL-ED       PERU                           0%                  0       71   284
6-24 months   ki0047075b-MAL-ED       PERU                           0%                  1        1   284
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       93   284
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   284
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                 0      119   284
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                 1        0   284
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      203   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       58   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0       10   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   273
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                  0       38   251
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                  1        8   251
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       59   251
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1       10   251
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 0      120   251
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 1       16   251
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  0      112   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  1       12   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0      155   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1       12   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      220   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       23   534
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  0      167   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  1        4   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      253   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        5   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      205   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        6   640
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0      334   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1       11   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0      163   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        7   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      207   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1        8   730
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                  0       82   257
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                  1        5   257
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       54   257
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        6   257
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 0      101   257
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 1        9   257
6-24 months   ki1114097-CMIN          BRAZIL                         0%                  0       41   119
6-24 months   ki1114097-CMIN          BRAZIL                         0%                  1        0   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            0       47   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            1        0   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                 0       31   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                 1        0   119
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  0      240   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        8   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0      213   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        4   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0      306   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1       12   783
6-24 months   ki1114097-CMIN          PERU                           0%                  0      201   686
6-24 months   ki1114097-CMIN          PERU                           0%                  1        0   686
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            0      194   686
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            1        2   686
6-24 months   ki1114097-CMIN          PERU                           >5%                 0      288   686
6-24 months   ki1114097-CMIN          PERU                           >5%                 1        1   686
6-24 months   ki1114097-CONTENT       PERU                           0%                  0      115   215
6-24 months   ki1114097-CONTENT       PERU                           0%                  1        0   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            0       43   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            1        0   215
6-24 months   ki1114097-CONTENT       PERU                           >5%                 0       57   215
6-24 months   ki1114097-CONTENT       PERU                           >5%                 1        0   215


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/3495ee53-3634-431b-977d-3b46407276e1/3470867e-ac89-4ce8-8781-4faefe3a9202/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3495ee53-3634-431b-977d-3b46407276e1/3470867e-ac89-4ce8-8781-4faefe3a9202/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3495ee53-3634-431b-977d-3b46407276e1/3470867e-ac89-4ce8-8781-4faefe3a9202/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3495ee53-3634-431b-977d-3b46407276e1/3470867e-ac89-4ce8-8781-4faefe3a9202/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                0.1739130   0.0641604   0.2836657
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.1449275   0.0616999   0.2281551
0-24 months   ki1000109-ResPak        PAKISTAN     >5%                  NA                0.1176471   0.0633899   0.1719042
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0970504   0.0441994   0.1499014
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0710241   0.0323288   0.1097194
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0934610   0.0567346   0.1301874
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0318841   0.0133322   0.0504359
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0411765   0.0112872   0.0710657
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0372093   0.0118920   0.0625267
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.0574713   0.0084700   0.1064726
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.1000000   0.0239428   0.1760572
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.0818182   0.0304981   0.1331383
0-6 months    ki1000109-ResPak        PAKISTAN     0%                   NA                0.1304348   0.0329081   0.2279615
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.1212121   0.0423083   0.2001159
0-6 months    ki1000109-ResPak        PAKISTAN     >5%                  NA                0.0859375   0.0372823   0.1345927
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                0.1739130   0.0641604   0.2836657
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.1449275   0.0616999   0.2281551
6-24 months   ki1000109-ResPak        PAKISTAN     >5%                  NA                0.1176471   0.0633899   0.1719042
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0952134   0.0429111   0.1475157
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0730626   0.0341359   0.1119892
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0934381   0.0568957   0.1299806
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0318841   0.0133322   0.0504359
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0411765   0.0112872   0.0710657
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0372093   0.0118920   0.0625267
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.0574713   0.0084700   0.1064726
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.1000000   0.0239428   0.1760572
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.0818182   0.0304981   0.1331383


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369
0-6 months    ki1000109-ResPak        PAKISTAN     NA                   NA                0.1041667   0.0654385   0.1428949
6-24 months   ki1000109-ResPak        PAKISTAN     NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-ResPak        PAKISTAN     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             0%                0.8333333   0.3550213   1.956064
0-24 months   ki1000109-ResPak        PAKISTAN     >5%                  0%                0.6764706   0.3095919   1.478115
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.7318268   0.3384712   1.582322
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                0.9630153   0.4917681   1.885845
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.2914439   0.5093913   3.274157
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                1.1670190   0.4767258   2.856848
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                1.7400000   0.5550642   5.454504
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.4236364   0.4939720   4.102946
0-6 months    ki1000109-ResPak        PAKISTAN     0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             0%                0.9292929   0.3448322   2.504364
0-6 months    ki1000109-ResPak        PAKISTAN     >5%                  0%                0.6588542   0.2579141   1.683075
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             0%                0.8333333   0.3550213   1.956064
6-24 months   ki1000109-ResPak        PAKISTAN     >5%                  0%                0.6764706   0.3095919   1.478115
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.7673557   0.3568142   1.650256
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                0.9813549   0.4994860   1.928097
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.2914439   0.5093913   3.274157
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                1.1670190   0.4767258   2.856848
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                1.7400000   0.5550642   5.454504
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.4236364   0.4939720   4.102946


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                -0.0384549   -0.1355630   0.0586533
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                -0.0090354   -0.0549348   0.0368639
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0037324   -0.0104046   0.0178694
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0203497   -0.0226891   0.0633886
0-6 months    ki1000109-ResPak        PAKISTAN     0%                   NA                -0.0262681   -0.1120893   0.0595531
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                -0.0384549   -0.1355630   0.0586533
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                -0.0071984   -0.0525636   0.0381668
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0037324   -0.0104046   0.0178694
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0203497   -0.0226891   0.0633886


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                -0.2838875   -1.2382452   0.2635449
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                -0.1026579   -0.7684563   0.3124770
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.1047938   -0.3918344   0.4242173
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.2614943   -0.5412670   0.6461413
0-6 months    ki1000109-ResPak        PAKISTAN     0%                   NA                -0.2521739   -1.4104582   0.3495264
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                -0.2838875   -1.2382452   0.2635449
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                -0.0817864   -0.7412133   0.3279044
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.1047938   -0.3918344   0.4242173
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.2614943   -0.5412670   0.6461413

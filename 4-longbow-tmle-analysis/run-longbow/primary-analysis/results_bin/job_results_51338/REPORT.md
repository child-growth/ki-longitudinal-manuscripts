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

agecat        studyid                 country                        perdiar6    wast_rec90d   n_cell     n
------------  ----------------------  -----------------------------  ---------  ------------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       17   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       21   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       20   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       34   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        8   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       24   124
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    0        5    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    1       15    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        2    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0    23
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                    0       14   178
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                    1       28   178
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       35   178
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       48   178
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   0       22   178
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   1       31   178
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    0       12    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    1       30    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        2    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       21    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   0        6    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   1       22    93
0-24 months   ki0047075b-MAL-ED       PERU                           0%                    0        3    34
0-24 months   ki0047075b-MAL-ED       PERU                           0%                    1        8    34
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        1    34
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        6    34
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                   0        2    34
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                   1       14    34
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0       10    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       49    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        4    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1       14    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        3    80
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        4    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       19    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        2    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       18    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0    45
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                    0       20   200
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                    1       16   200
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       33   200
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       24   200
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   0       56   200
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   1       51   200
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       45   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       44   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       61   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       52   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       96   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1      123   421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    0       38   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       46   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       57   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       78   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       33   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       55   307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0       58   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       98   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0       28   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       46   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0       31   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       50   311
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                    0       28   190
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                    1       43   190
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       19   190
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       16   190
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   0       33   190
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   1       51   190
0-24 months   ki1114097-CMIN          BRAZIL                         0%                    0        2    13
0-24 months   ki1114097-CMIN          BRAZIL                         0%                    1        3    13
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0        4    13
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1    13
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                   0        1    13
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                   1        2    13
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0       51   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       26   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0       48   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       30   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0       58   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       31   244
0-24 months   ki1114097-CMIN          PERU                           0%                    0        2    86
0-24 months   ki1114097-CMIN          PERU                           0%                    1       14    86
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              0        9    86
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              1       23    86
0-24 months   ki1114097-CMIN          PERU                           >5%                   0        8    86
0-24 months   ki1114097-CMIN          PERU                           >5%                   1       30    86
0-24 months   ki1114097-CONTENT       PERU                           0%                    0        1     9
0-24 months   ki1114097-CONTENT       PERU                           0%                    1        5     9
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              0        1     9
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     9
0-24 months   ki1114097-CONTENT       PERU                           >5%                   0        0     9
0-24 months   ki1114097-CONTENT       PERU                           >5%                   1        2     9
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                    0        5    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                    1       12    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0        5    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       19    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        3    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       18    62
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                    0        1    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                    1       11    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        2    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        0    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0    14
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                    0        5    83
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                    1       14    83
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       13    83
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       27    83
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                   0        8    83
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                   1       16    83
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                    0        6    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                    1       10    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        2    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       15    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                   0        1    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                   1        9    43
0-6 months    ki0047075b-MAL-ED       PERU                           0%                    0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           0%                    1        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        2    11
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                   0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                   1        9    11
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0        4    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       18    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        1    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        5    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        2    30
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        1    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        0    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        6    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        0    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0    12
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                    0       11   112
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                    1       14   112
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       11   112
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       20   112
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                   0       21   112
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                   1       35   112
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                    0       15   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                    1       34   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       18   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       42   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       31   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       83   223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                    0       17   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                    1       39   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       11   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       60   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       11   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       46   184
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0        7   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       92   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0        5   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       43   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0        9   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       42   198
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                    0        5    52
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                    1       13    52
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0        9    52
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1        6    52
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                   0       11    52
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                   1        8    52
0-6 months    ki1114097-CMIN          BRAZIL                         0%                    0        1     9
0-6 months    ki1114097-CMIN          BRAZIL                         0%                    1        3     9
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]              0        2     9
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        0     9
0-6 months    ki1114097-CMIN          BRAZIL                         >5%                   0        1     9
0-6 months    ki1114097-CMIN          BRAZIL                         >5%                   1        2     9
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                    0        7    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                    1        2    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0        8    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1        8    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0        8    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       12    45
0-6 months    ki1114097-CMIN          PERU                           0%                    0        1    52
0-6 months    ki1114097-CMIN          PERU                           0%                    1        7    52
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]              0        5    52
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]              1       13    52
0-6 months    ki1114097-CMIN          PERU                           >5%                   0        4    52
0-6 months    ki1114097-CMIN          PERU                           >5%                   1       22    52
0-6 months    ki1114097-CONTENT       PERU                           0%                    0        0     4
0-6 months    ki1114097-CONTENT       PERU                           0%                    1        2     4
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]              0        0     4
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     4
0-6 months    ki1114097-CONTENT       PERU                           >5%                   0        0     4
0-6 months    ki1114097-CONTENT       PERU                           >5%                   1        2     4
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       12    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    1        9    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       15    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       15    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        5    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        6    62
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    0        4     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    1        4     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        0     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0     9
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                    0        9    95
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                    1       14    95
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       22    95
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       21    95
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   0       14    95
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   1       15    95
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    0        6    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    1       20    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        0    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        6    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   0        5    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   1       13    50
6-24 months   ki0047075b-MAL-ED       PERU                           0%                    0        3    23
6-24 months   ki0047075b-MAL-ED       PERU                           0%                    1        8    23
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        1    23
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        4    23
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                   0        2    23
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                   1        5    23
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0        6    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       31    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        3    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        9    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1    50
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        3    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       14    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        2    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0    33
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                    0        9    88
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                    1        2    88
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       22    88
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1        4    88
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   0       35    88
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   1       16    88
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       30   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       10   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       43   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       10   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       65   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       40   198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    0       21   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    1        7   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       46   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       18   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       22   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1        9   123
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0       51   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1        6   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0       23   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1        3   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0       22   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1        8   113
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                    0       23   138
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                    1       30   138
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       10   138
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       10   138
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   0       22   138
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   1       43   138
6-24 months   ki1114097-CMIN          BRAZIL                         0%                    0        1     4
6-24 months   ki1114097-CMIN          BRAZIL                         0%                    1        0     4
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0        2     4
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1     4
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                   0        0     4
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                   1        0     4
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0       44   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       24   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0       40   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       22   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0       50   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       19   199
6-24 months   ki1114097-CMIN          PERU                           0%                    0        1    34
6-24 months   ki1114097-CMIN          PERU                           0%                    1        7    34
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              0        4    34
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              1       10    34
6-24 months   ki1114097-CMIN          PERU                           >5%                   0        4    34
6-24 months   ki1114097-CMIN          PERU                           >5%                   1        8    34
6-24 months   ki1114097-CONTENT       PERU                           0%                    0        1     5
6-24 months   ki1114097-CONTENT       PERU                           0%                    1        3     5
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              0        1     5
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     5
6-24 months   ki1114097-CONTENT       PERU                           >5%                   0        0     5
6-24 months   ki1114097-CONTENT       PERU                           >5%                   1        0     5


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
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
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
![](/tmp/6a837d74-f20f-4cff-8e69-6448f3093c7e/c1010759-004d-47e5-8fcf-bae0ec2c2268/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a837d74-f20f-4cff-8e69-6448f3093c7e/c1010759-004d-47e5-8fcf-bae0ec2c2268/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a837d74-f20f-4cff-8e69-6448f3093c7e/c1010759-004d-47e5-8fcf-bae0ec2c2268/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a837d74-f20f-4cff-8e69-6448f3093c7e/c1010759-004d-47e5-8fcf-bae0ec2c2268/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.5526316   0.3844057   0.7208575
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.6296296   0.5121519   0.7471074
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.7500000   0.5844253   0.9155747
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.6710531   0.4830551   0.8590512
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.5779812   0.4591755   0.6967870
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.5808602   0.4382425   0.7234779
0-24 months   ki1000109-ResPak        PAKISTAN        0%                   NA                0.4242479   0.2400122   0.6084837
0-24 months   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.3721081   0.2398137   0.5044024
0-24 months   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4676879   0.3679265   0.5674492
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.4888333   0.3714401   0.6062266
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.4611038   0.3597316   0.5624760
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.5630808   0.4948413   0.6313202
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.5426559   0.4233607   0.6619510
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.5746854   0.4887011   0.6606697
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.6187688   0.5173401   0.7201975
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.6179140   0.5407874   0.6950406
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.6164437   0.5041899   0.7286974
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.6388206   0.5427580   0.7348833
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.6001778   0.4777823   0.7225732
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.4392212   0.2376585   0.6407839
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.5999060   0.4811203   0.7186916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.3518655   0.2407371   0.4629940
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.3990432   0.2883371   0.5097492
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.3569689   0.2522443   0.4616934
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                0.7368421   0.5274868   0.9461974
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.6750000   0.5281850   0.8218150
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.6666667   0.4693684   0.8639649
0-6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                0.5442552   0.3403177   0.7481928
0-6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.6182241   0.4542530   0.7821952
0-6 months    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.6172032   0.4864713   0.7479351
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.6930424   0.5637256   0.8223593
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.6965872   0.5732370   0.8199374
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.7279665   0.6460205   0.8099125
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.7003800   0.5817657   0.8189944
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.8511495   0.7640924   0.9382066
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.7979673   0.6951035   0.9008311
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.9292929   0.8781930   0.9803929
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.8958333   0.8083097   0.9833570
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.8235294   0.7175654   0.9294935
0-6 months    ki1114097-CMIN          BANGLADESH      0%                   NA                0.7222222   0.5220936   0.9223508
0-6 months    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.4000000   0.1395476   0.6604524
0-6 months    ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4210526   0.1965983   0.6455070
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.4285714   0.1873815   0.6697613
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.5000000   0.3511323   0.6488677
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.5454545   0.1667926   0.9241165
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.6086957   0.3716126   0.8457787
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.4883721   0.3173946   0.6593495
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.5172414   0.3159219   0.7185608
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2282992   0.0898603   0.3667381
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1937633   0.0855489   0.3019778
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3734134   0.2784207   0.4684062
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.2500000   0.0764031   0.4235969
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2812500   0.1643962   0.3981038
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.2903226   0.1444416   0.4362035
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.5810705   0.4410183   0.7211227
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.5784079   0.2824518   0.8743640
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.6707231   0.5478634   0.7935828
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.3461803   0.2310727   0.4612879
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.3472186   0.2235765   0.4708606
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.2651712   0.1558193   0.3745232


### Parameter: E(Y)


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki1000109-ResPak        PAKISTAN        NA                   NA                0.4550000   0.3826235   0.5273765
0-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.3565574   0.2946037   0.4185110
0-6 months    ki0047075b-MAL-ED       INDIA           NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000109-ResPak        PAKISTAN        NA                   NA                0.6160714   0.5252688   0.7068741
0-6 months    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1114097-CMIN          BANGLADESH      NA                   NA                0.5192308   0.3806687   0.6577929
6-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.3266332   0.2609581   0.3923082


### Parameter: RR


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                1.1393298   0.7971261   1.628440
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                1.3571429   0.9317025   1.976851
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.8613047   0.6084050   1.219329
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                0.8655950   0.5963025   1.256501
0-24 months   ki1000109-ResPak        PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak        PAKISTAN        (0%, 5%]             0%                0.8771004   0.4990129   1.541654
0-24 months   ki1000109-ResPak        PAKISTAN        >5%                  0%                1.1023928   0.6791086   1.789507
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                0.9432741   0.6816605   1.305292
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.1518870   0.8807414   1.506508
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.0590236   0.8117803   1.381570
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1402600   0.8670545   1.499552
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                0.9976205   0.8004060   1.243427
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                1.0338343   0.8542226   1.251212
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.7318185   0.4438526   1.206613
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  0%                0.9995472   0.7548411   1.323583
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                1.1340786   0.7436325   1.729529
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                1.0145036   0.6590802   1.561597
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.9160714   0.6405164   1.310172
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  0%                0.9047619   0.6002904   1.363664
0-6 months    ki1000109-ResPak        PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             0%                1.1359085   0.7146113   1.805580
0-6 months    ki1000109-ResPak        PAKISTAN        >5%                  0%                1.1340327   0.7376285   1.743466
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.0051148   0.7774433   1.299459
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.0503923   0.8448740   1.305904
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.2152681   0.9968493   1.481545
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1393347   0.9209745   1.409468
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                0.9639946   0.8617572   1.078361
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.8861893   0.7704715   1.019287
0-6 months    ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.5538462   0.2729382   1.123865
0-6 months    ki1114097-CMIN          BANGLADESH      >5%                  0%                0.5829960   0.3197555   1.062950
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                1.1666667   0.6172192   2.205232
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                1.2727273   0.5208739   3.109841
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.8023256   0.4751146   1.354887
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                0.8497537   0.4901748   1.473110
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                0.8487254   0.3735948   1.928118
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.6356316   0.8476400   3.156164
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.1250000   0.5008452   2.526978
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1612903   0.4928137   2.736521
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.9954178   0.5654742   1.752258
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  0%                1.1542887   0.8517801   1.564233
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                1.0029993   0.6156600   1.634031
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.7659918   0.4507811   1.301615


### Parameter: PAR


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.0844652   -0.0513158    0.2202462
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0699295   -0.2329990    0.0931400
0-24 months   ki1000109-ResPak        PAKISTAN        0%                   NA                 0.0307521   -0.1341211    0.1956252
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0313567   -0.0717528    0.1344662
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0404060   -0.0592796    0.1400917
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                 0.0058802   -0.0468568    0.0586172
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0212304   -0.1210361    0.0785753
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                 0.0046918   -0.0881775    0.0975612
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0500951   -0.2354944    0.1353041
0-6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                 0.0718162   -0.1060762    0.2497086
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0199620   -0.0941225    0.1340466
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0876634   -0.0077795    0.1831064
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0353535   -0.0787883    0.0080812
0-6 months    ki1114097-CMIN          BANGLADESH      0%                   NA                -0.2029915   -0.3793059   -0.0266770
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.0552995   -0.1317965    0.2423956
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0823799   -0.2885361    0.1237764
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0747311   -0.0518965    0.2013587
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0264228   -0.1253051    0.1781506
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                 0.0203788   -0.0927436    0.1335012
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0195471   -0.1128618    0.0737676


### Parameter: PAF


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.1325783   -0.1123815    0.3235950
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.1163314   -0.4221690    0.1237358
0-24 months   ki1000109-ResPak        PAKISTAN        0%                   NA                 0.0675869   -0.3765084    0.3684062
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0602793   -0.1609063    0.2393228
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0692997   -0.1193049    0.2261242
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                 0.0094266   -0.0788723    0.0904987
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0366707   -0.2247372    0.1225170
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                 0.0131587   -0.2848928    0.2420725
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0729455   -0.3806231    0.1661648
0-6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                 0.1165712   -0.2269214    0.3638986
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0279971   -0.1459873    0.1755671
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.1112419   -0.0201338    0.2256986
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0395480   -0.0899442    0.0085179
0-6 months    ki1114097-CMIN          BANGLADESH      0%                   NA                -0.3909465   -0.8220742   -0.0618295
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.1142857   -0.3786277    0.4309633
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.1565217   -0.6242382    0.1765108
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.2466126   -0.3114823    0.5672129
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0955882   -0.6617363    0.5077675
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                 0.0338828   -0.1735393    0.2046432
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0598442   -0.3877783    0.1905987

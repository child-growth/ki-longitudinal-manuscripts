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
* hfoodsec
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
* delta_hfoodsec
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
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       16   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       22   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       20   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       34   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        8   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       24   124
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    0        5    24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    1       16    24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0    24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        2    24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1    24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0    24
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                    0       14   181
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                    1       29   181
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       35   181
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       50   181
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   0       22   181
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   1       31   181
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    0       12    98
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    1       31    98
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        2    98
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       23    98
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   0        6    98
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   1       24    98
0-24 months   ki0047075b-MAL-ED       PERU                           0%                    0        3    35
0-24 months   ki0047075b-MAL-ED       PERU                           0%                    1        8    35
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        1    35
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        6    35
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                   0        2    35
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                   1       15    35
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0       11    84
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       51    84
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        4    84
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1       15    84
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    84
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        3    84
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        4    51
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       21    51
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        3    51
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       19    51
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    51
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2    51
0-24 months   ki1000109-EE            PAKISTAN                       0%                    0      149   323
0-24 months   ki1000109-EE            PAKISTAN                       0%                    1      141   323
0-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]              0       11   323
0-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]              1       18   323
0-24 months   ki1000109-EE            PAKISTAN                       >5%                   0        0   323
0-24 months   ki1000109-EE            PAKISTAN                       >5%                   1        4   323
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       45   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       44   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       61   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       52   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       96   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1      123   421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    0       38   308
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       47   308
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       57   308
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       78   308
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       34   308
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       54   308
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0       58   310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       98   310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0       28   310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       46   310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0       31   310
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       49   310
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                    0       28   190
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                    1       43   190
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       19   190
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       16   190
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   0       33   190
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   1       51   190
0-24 months   ki1114097-CONTENT       PERU                           0%                    0        1     9
0-24 months   ki1114097-CONTENT       PERU                           0%                    1        5     9
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              0        1     9
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     9
0-24 months   ki1114097-CONTENT       PERU                           >5%                   0        0     9
0-24 months   ki1114097-CONTENT       PERU                           >5%                   1        2     9
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                    0        5    63
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                    1       13    63
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0        5    63
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       19    63
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        3    63
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       18    63
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                    0        1    15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                    1       12    15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0    15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        2    15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        0    15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0    15
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                    0        6    86
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                    1       14    86
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       13    86
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       29    86
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                   0        8    86
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                   1       16    86
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                    0        6    48
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                    1       11    48
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        2    48
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       17    48
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                   0        1    48
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                   1       11    48
0-6 months    ki0047075b-MAL-ED       PERU                           0%                    0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           0%                    1        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        2    11
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                   0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                   1        9    11
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0        5    33
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       19    33
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        1    33
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        6    33
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    33
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        2    33
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        1    14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5    14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        0    14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        7    14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        0    14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        1    14
0-6 months    ki1000109-EE            PAKISTAN                       0%                    0       52   127
0-6 months    ki1000109-EE            PAKISTAN                       0%                    1       61   127
0-6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]              0        3   127
0-6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]              1       10   127
0-6 months    ki1000109-EE            PAKISTAN                       >5%                   0        0   127
0-6 months    ki1000109-EE            PAKISTAN                       >5%                   1        1   127
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                    0       15   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                    1       34   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       18   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       42   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       31   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       83   223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                    0       17   185
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                    1       39   185
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       11   185
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       60   185
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       12   185
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       46   185
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0        7   197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       92   197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0        5   197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       43   197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0        9   197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       41   197
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                    0        5    52
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                    1       13    52
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0        9    52
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1        6    52
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                   0       11    52
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                   1        8    52
0-6 months    ki1114097-CONTENT       PERU                           0%                    0        0     4
0-6 months    ki1114097-CONTENT       PERU                           0%                    1        2     4
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]              0        0     4
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     4
0-6 months    ki1114097-CONTENT       PERU                           >5%                   0        0     4
0-6 months    ki1114097-CONTENT       PERU                           >5%                   1        2     4
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       11    61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    1        9    61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       15    61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       15    61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        5    61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        6    61
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    0        4     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    1        4     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        0     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0     9
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                    0        8    95
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                    1       15    95
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
6-24 months   ki0047075b-MAL-ED       PERU                           0%                    0        3    24
6-24 months   ki0047075b-MAL-ED       PERU                           0%                    1        8    24
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        1    24
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        4    24
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                   0        2    24
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                   1        6    24
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0        6    51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       32    51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        3    51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        9    51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1    51
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        3    37
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       16    37
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        3    37
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12    37
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    37
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        1    37
6-24 months   ki1000109-EE            PAKISTAN                       0%                    0       97   196
6-24 months   ki1000109-EE            PAKISTAN                       0%                    1       80   196
6-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]              0        8   196
6-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]              1        8   196
6-24 months   ki1000109-EE            PAKISTAN                       >5%                   0        0   196
6-24 months   ki1000109-EE            PAKISTAN                       >5%                   1        3   196
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       30   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       10   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       43   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       10   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       65   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       40   198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    0       21   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    1        8   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       46   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       18   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       22   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1        8   123
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/e75519cb-8aca-4992-b8ad-eff6793f80d7/48f7fa6a-b840-4911-a7f2-ecaab74173b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e75519cb-8aca-4992-b8ad-eff6793f80d7/48f7fa6a-b840-4911-a7f2-ecaab74173b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e75519cb-8aca-4992-b8ad-eff6793f80d7/48f7fa6a-b840-4911-a7f2-ecaab74173b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e75519cb-8aca-4992-b8ad-eff6793f80d7/48f7fa6a-b840-4911-a7f2-ecaab74173b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.5789474   0.4106093   0.7472854
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.6296296   0.5121519   0.7471074
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.7500000   0.5844253   0.9155747
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.6807283   0.4973873   0.8640694
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.5957131   0.4787119   0.7127143
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.5805479   0.4388144   0.7222814
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.4980702   0.3780832   0.6180572
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.4627603   0.3617619   0.5637587
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.5625405   0.4944460   0.6306350
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.5593941   0.4422505   0.6765376
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.5836218   0.4970275   0.6702161
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.6050043   0.5024794   0.7075292
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.6138269   0.5364410   0.6912128
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.6272700   0.5148537   0.7396862
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.6264816   0.5282888   0.7246744
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.5946147   0.4719954   0.7172340
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.4507965   0.2595406   0.6420523
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.5985906   0.4787611   0.7184201
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                0.7000000   0.4880703   0.9119297
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.6904762   0.5490691   0.8318832
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  NA                0.6666667   0.4697615   0.8635719
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.6966614   0.5617492   0.8315737
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.6985948   0.5813416   0.8158479
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.7279868   0.6459494   0.8100242
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.7058083   0.5826346   0.8289819
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.8488766   0.7617697   0.9359834
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.7788585   0.6770336   0.8806834
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.9292929   0.8781896   0.9803962
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.8958333   0.8083040   0.9833626
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.8200000   0.7121415   0.9278585
0-6 months    ki1114097-CMIN          BANGLADESH   0%                   NA                0.7222222   0.5220936   0.9223508
0-6 months    ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.4000000   0.1395476   0.6604524
0-6 months    ki1114097-CMIN          BANGLADESH   >5%                  NA                0.4210526   0.1965983   0.6455070
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.4500000   0.2011920   0.6988080
6-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.5000000   0.3500866   0.6499134
6-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.5454545   0.1641333   0.9267758
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.6521739   0.4227678   0.8815800
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.4883721   0.3173946   0.6593495
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.5172414   0.3159219   0.7185608
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2320166   0.0936260   0.3704071
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1907371   0.0808764   0.3005978
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.3805062   0.2846246   0.4763877
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.2758621   0.1082883   0.4434359
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2812500   0.1643962   0.3981038
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.2666667   0.1154539   0.4178794
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.5661270   0.4332222   0.6990319
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.5113738   0.2309996   0.7917480
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.6666399   0.5406386   0.7926411


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.5789474   0.5004470   0.6574477
0-6 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.6860465   0.5849088   0.7871842
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1114097-CMIN          BANGLADESH   NA                   NA                0.5192308   0.3806687   0.6577929
6-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.6014493   0.5131344   0.6897641


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                1.0875421   0.7699799   1.536076
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                1.2954545   0.8993242   1.866071
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.8751114   0.6273482   1.220725
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                0.8528335   0.5921848   1.228206
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.9291066   0.6704291   1.287592
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.1294402   0.8630355   1.478080
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0433106   0.8067215   1.349285
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.0815351   0.8260491   1.416039
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.0219005   0.8227005   1.269333
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                1.0206161   0.8391892   1.241266
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.7581321   0.4709684   1.220388
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0066865   0.7549668   1.342334
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.9863946   0.6843974   1.421651
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  0%                0.9523810   0.6239074   1.453789
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.0027751   0.7757823   1.296186
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.0449649   0.8347870   1.308060
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.2027014   0.9819305   1.473109
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1034987   0.8872284   1.372487
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9639946   0.8617509   1.078369
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.8823913   0.7651472   1.017601
0-6 months    ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.5538462   0.2729382   1.123865
0-6 months    ki1114097-CMIN          BANGLADESH   >5%                  0%                0.5829960   0.3197555   1.062950
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                1.1111111   0.5923791   2.084084
6-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                1.2121212   0.4972345   2.954819
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.7488372   0.4558306   1.230188
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                0.7931034   0.4694408   1.339920
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.8220840   0.3578531   1.888546
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.6399958   0.8558460   3.142605
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0195312   0.4883689   2.128399
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                0.9666667   0.4210787   2.219168
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.9032845   0.4980769   1.638147
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.1775446   0.8685374   1.596490


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0662139   -0.0688583    0.2012861
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0729935   -0.2315621    0.0855750
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0221198   -0.0833894    0.1276291
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0217748   -0.0765813    0.1201308
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0087538   -0.0433123    0.0608198
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0156673   -0.1164545    0.0851199
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0139535   -0.1990284    0.1711214
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0163430   -0.1024700    0.1351561
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0779755   -0.0217834    0.1777344
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0358919   -0.0793847    0.0076008
0-6 months    ki1114097-CMIN          BANGLADESH   0%                   NA                -0.2029915   -0.3793059   -0.0266770
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0418033   -0.1531482    0.2367548
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1153318   -0.3165243    0.0858607
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0710137   -0.0560546    0.1980821
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0005607   -0.1459375    0.1470589
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0353222   -0.0739067    0.1445511


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.1026316   -0.1357451    0.2909764
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1201075   -0.4127614    0.1119230
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0425226   -0.1837786    0.2255621
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0374672   -0.1479369    0.1929266
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0140605   -0.0733101    0.0943188
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0270618   -0.2171713    0.1333546
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0203390   -0.3291105    0.2167005
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0229214   -0.1588708    0.1761958
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0994860   -0.0387864    0.2193530
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0401745   -0.0906918    0.0080031
0-6 months    ki1114097-CMIN          BANGLADESH   0%                   NA                -0.3909465   -0.8220742   -0.0618295
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0850000   -0.4167715    0.4090614
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.2148338   -0.6589228    0.1103739
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.2343453   -0.3226518    0.5567790
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0020284   -0.6972781    0.4132091
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0587285   -0.1407107    0.2232982

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

unadjusted

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
![](/tmp/65f1e4f7-0b4f-4de0-bfc9-2d8edcaad52f/f0cdd390-443c-4620-9a0d-fc9fcf5124d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/65f1e4f7-0b4f-4de0-bfc9-2d8edcaad52f/f0cdd390-443c-4620-9a0d-fc9fcf5124d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/65f1e4f7-0b4f-4de0-bfc9-2d8edcaad52f/f0cdd390-443c-4620-9a0d-fc9fcf5124d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/65f1e4f7-0b4f-4de0-bfc9-2d8edcaad52f/f0cdd390-443c-4620-9a0d-fc9fcf5124d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.5789474   0.4106093   0.7472854
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.6296296   0.5121519   0.7471074
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.7500000   0.5844253   0.9155747
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.6744186   0.5029015   0.8459357
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.5882353   0.4730078   0.7034628
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.5849057   0.4463586   0.7234527
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.4943820   0.3785619   0.6102021
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.4601770   0.3619611   0.5583929
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.5616438   0.4935175   0.6297702
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.5529412   0.4385092   0.6673732
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.5777778   0.4925278   0.6630278
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.6136364   0.5141779   0.7130948
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.6282051   0.5508013   0.7056090
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.6216216   0.5105149   0.7327284
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.6125000   0.5080596   0.7169404
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.6056338   0.4830890   0.7281786
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.4571429   0.2650448   0.6492409
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.6071429   0.4897119   0.7245738
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                0.7000000   0.4880703   0.9119297
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.6904762   0.5490691   0.8318832
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  NA                0.6666667   0.4697615   0.8635719
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.6938776   0.5639590   0.8237961
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.7000000   0.5832614   0.8167386
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.7280702   0.6468500   0.8092903
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.6964286   0.5787526   0.8141046
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.8450704   0.7588066   0.9313343
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.7931034   0.6930595   0.8931474
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
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2500000   0.1193951   0.3806049
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1886792   0.0809763   0.2963822
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.3809524   0.2849146   0.4769902
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.2758621   0.1082883   0.4434359
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2812500   0.1643962   0.3981038
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.2666667   0.1154539   0.4178794
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.5660377   0.4292281   0.7028474
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.5000000   0.2197112   0.7802888
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.6615385   0.5406406   0.7824363


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
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.8722110   0.6327342   1.202325
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                0.8672739   0.6126221   1.227778
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.9308126   0.6779052   1.278073
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.1360523   0.8725865   1.479068
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0449173   0.8103156   1.347441
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1097679   0.8530220   1.443790
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9895201   0.7961004   1.229933
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.9750000   0.7898480   1.203554
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.7548173   0.4734735   1.203339
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0024917   0.7577470   1.326286
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.9863946   0.6843974   1.421651
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  0%                0.9523810   0.6239074   1.453789
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.0088235   0.7850935   1.296310
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.0492776   0.8437938   1.304801
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.2134345   0.9960513   1.478260
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1388152   0.9222973   1.406163
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
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.7547170   0.3480597   1.636494
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.5238095   0.8526689   2.723209
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0195312   0.4883689   2.128399
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                0.9666667   0.4210787   2.219168
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.8833333   0.4797379   1.626467
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.1687179   0.8631981   1.582373


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0662139   -0.0688583    0.2012861
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0666838   -0.2144212    0.0810536
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0258080   -0.0758003    0.1274163
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0282277   -0.0672734    0.1237287
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0056245   -0.0595782    0.0483292
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0266864   -0.1263765    0.0730037
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0139535   -0.1990284    0.1711214
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0191269   -0.0948530    0.1331069
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0873552   -0.0070595    0.1817700
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0358919   -0.0793847    0.0076008
0-6 months    ki1114097-CMIN          BANGLADESH   0%                   NA                -0.2029915   -0.3793059   -0.0266770
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0418033   -0.1531482    0.2367548
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1153318   -0.3165243    0.0858607
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0530303   -0.0667951    0.1728557
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0005607   -0.1459375    0.1470589
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0354115   -0.0749384    0.1457615


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.1026316   -0.1357451    0.2909764
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1097252   -0.3810039    0.1082647
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0496126   -0.1676160    0.2264271
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0485705   -0.1312794    0.1998280
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0090341   -0.0995076    0.0739947
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0460948   -0.2339120    0.1131343
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0203390   -0.3291105    0.2167005
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0268258   -0.1469998    0.1743085
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.1114532   -0.0191784    0.2253413
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0401745   -0.0906918    0.0080031
0-6 months    ki1114097-CMIN          BANGLADESH   0%                   NA                -0.3909465   -0.8220742   -0.0618295
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0850000   -0.4167715    0.4090614
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.2148338   -0.6589228    0.1103739
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.1750000   -0.3291680    0.4879316
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0020284   -0.6972781    0.4132091
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0588770   -0.1432699    0.2252814

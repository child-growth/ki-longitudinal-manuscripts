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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
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
* delta_feducyrs
* delta_hhwealth_quart
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

agecat                       studyid                 country                        perdiar6    ever_stunted   n_cell     n
---------------------------  ----------------------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       35   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1       37   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       41   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       44   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       27   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       33   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      156   202
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     1       30   202
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   202
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   202
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   202
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   202
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     0       23   210
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     1       26   210
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       53   210
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       53   210
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    0       23   210
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    1       32   210
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     0       53   211
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     1       20   211
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       54   211
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       14   211
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       49   211
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    1       21   211
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     0       37   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     1       40   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       29   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       51   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    0       49   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    1       60   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      100   265
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1      104   265
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       21   265
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       31   265
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   265
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   265
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       19   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       75   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       16   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       69   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       35   219
0-24 months (no birth st.)   ki1000109-EE            PAKISTAN                       0%                     0       38   213
0-24 months (no birth st.)   ki1000109-EE            PAKISTAN                       0%                     1      161   213
0-24 months (no birth st.)   ki1000109-EE            PAKISTAN                       (0%, 5%]               0        2   213
0-24 months (no birth st.)   ki1000109-EE            PAKISTAN                       (0%, 5%]               1       11   213
0-24 months (no birth st.)   ki1000109-EE            PAKISTAN                       >5%                    0        1   213
0-24 months (no birth st.)   ki1000109-EE            PAKISTAN                       >5%                    1        0   213
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0       69   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       72   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       67   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       92   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       73   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1      155   528
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      149   633
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1       53   633
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      137   633
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1      101   633
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      109   633
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       84   633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      196   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1      117   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0       85   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       66   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      115   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       74   653
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                     0       20   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                     1       48   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0        5   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       29   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                    0       16   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                    1       50   168
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     0       79   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     1       28   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        8   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    0       44   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    1        9   197
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       49   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1       23   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       73   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       48   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      167   202
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     1       19   202
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   202
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   202
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   202
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   202
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     0       38   210
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     1       11   210
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       88   210
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       18   210
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    0       38   210
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    1       17   210
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     0       64   211
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     1        9   211
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       65   211
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        3   211
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       68   211
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        2   211
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     0       53   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     1       24   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       47   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       33   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    0       74   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    1       35   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      143   265
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       61   265
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       38   265
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       14   265
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   265
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   265
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       67   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       27   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       59   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       27   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       13   219
0-6 months (no birth st.)    ki1000109-EE            PAKISTAN                       0%                     0       86   213
0-6 months (no birth st.)    ki1000109-EE            PAKISTAN                       0%                     1      113   213
0-6 months (no birth st.)    ki1000109-EE            PAKISTAN                       (0%, 5%]               0        8   213
0-6 months (no birth st.)    ki1000109-EE            PAKISTAN                       (0%, 5%]               1        5   213
0-6 months (no birth st.)    ki1000109-EE            PAKISTAN                       >5%                    0        1   213
0-6 months (no birth st.)    ki1000109-EE            PAKISTAN                       >5%                    1        0   213
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      126   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1       15   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      120   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       39   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      161   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       67   528
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      183   633
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1       19   633
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      193   633
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       45   633
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      156   633
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       37   633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      260   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       53   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      112   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       39   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      157   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       32   653
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                     0       45   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                     1       23   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       24   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       10   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                    0       51   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                    1       15   168
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     0       88   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     1       19   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       30   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        7   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    0       49   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    1        4   197
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     0       27   158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     1       14   158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       39   158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       32   158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       25   158
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       21   158
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     0      138   163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     1       11   163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   163
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   163
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     0       15   154
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     1       15   154
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       52   154
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       35   154
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    0       22   154
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    1       15   154
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     0       52   194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     1       11   194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       53   194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       11   194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    0       48   194
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    1       19   194
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     0       19   149
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     1       16   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       26   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       18   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    0       45   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    1       25   149
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0       74   158
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       43   158
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       18   158
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       17   158
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        6   158
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   158
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       12   144
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       48   144
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       14   144
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       43   144
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   144
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       22   144
6-24 months                  ki1000109-EE            PAKISTAN                       0%                     0       36    93
6-24 months                  ki1000109-EE            PAKISTAN                       0%                     1       48    93
6-24 months                  ki1000109-EE            PAKISTAN                       (0%, 5%]               0        2    93
6-24 months                  ki1000109-EE            PAKISTAN                       (0%, 5%]               1        6    93
6-24 months                  ki1000109-EE            PAKISTAN                       >5%                    0        1    93
6-24 months                  ki1000109-EE            PAKISTAN                       >5%                    1        0    93
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     0       37   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     1       57   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       59   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       53   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       51   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       88   345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     0       93   456
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     1       34   456
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      126   456
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       56   456
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      100   456
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       47   456
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      182   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       64   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0       81   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       27   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      110   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       42   506
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                     0       14   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                     1       25   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0        5   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       19   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                    0       13   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                    1       35   111
6-24 months                  ki1114097-CONTENT       PERU                           0%                     0       79   167
6-24 months                  ki1114097-CONTENT       PERU                           0%                     1        9   167
6-24 months                  ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   167
6-24 months                  ki1114097-CONTENT       PERU                           (0%, 5%]               1        1   167
6-24 months                  ki1114097-CONTENT       PERU                           >5%                    0       44   167
6-24 months                  ki1114097-CONTENT       PERU                           >5%                    1        5   167


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/84e66e4c-e02a-4840-82bb-0358dbb817b4/6384cf10-e620-4c7e-a9bc-06112ddb066f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84e66e4c-e02a-4840-82bb-0358dbb817b4/6384cf10-e620-4c7e-a9bc-06112ddb066f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84e66e4c-e02a-4840-82bb-0358dbb817b4/6384cf10-e620-4c7e-a9bc-06112ddb066f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84e66e4c-e02a-4840-82bb-0358dbb817b4/6384cf10-e620-4c7e-a9bc-06112ddb066f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.5112172   0.3993082   0.6231262
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5275588   0.4186551   0.6364626
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5324041   0.4082989   0.6565093
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.5356739   0.3979529   0.6733949
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.5052157   0.4102640   0.6001673
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.5815694   0.4534865   0.7096524
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2771609   0.1735688   0.3807529
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2100600   0.1126340   0.3074860
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.3002316   0.1924497   0.4080134
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                0.5740714   0.4682379   0.6799049
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.6403222   0.5331064   0.7475380
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.5310976   0.4344346   0.6277606
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7978723   0.7165036   0.8792411
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5240377   0.4418462   0.6062293
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5868687   0.5132281   0.6605092
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6665686   0.6080251   0.7251121
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2840353   0.2261821   0.3418884
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4134784   0.3530352   0.4739215
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.4268973   0.3586288   0.4951658
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.3790222   0.3273567   0.4306878
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4199042   0.3493548   0.4904536
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.3948793   0.3270836   0.4626751
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7058824   0.5972606   0.8145041
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8529412   0.7335396   0.9723428
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7575758   0.6538770   0.8612745
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                0.2616822   0.1781854   0.3451791
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2162162   0.0832337   0.3491987
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  NA                0.1698113   0.0684699   0.2711527
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3175807   0.2096423   0.4255190
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1412750   0.0685984   0.2139515
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1931258   0.0901851   0.2960665
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.2110746   0.0946411   0.3275080
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1642811   0.0922547   0.2363074
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2993336   0.1762444   0.4224227
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                0.3291634   0.2251393   0.4331874
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4048231   0.2936033   0.5160428
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3131187   0.2234763   0.4027611
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2772356   0.1864352   0.3680360
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.2954459   0.1955605   0.3953314
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3159907   0.1713849   0.4605964
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1107062   0.0598776   0.1615347
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2487317   0.1815265   0.3159369
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2975744   0.2381391   0.3570097
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1048718   0.0602033   0.1495402
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1778585   0.1305175   0.2251995
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.2028084   0.1430854   0.2625313
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1728020   0.1322306   0.2133734
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2518127   0.1875930   0.3160325
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1659931   0.1142362   0.2177500
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3353209   0.2214208   0.4492210
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.2778198   0.1197095   0.4359300
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2212149   0.1188730   0.3235569
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3616609   0.2136690   0.5096528
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4475517   0.3303251   0.5647784
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4401324   0.2927015   0.5875633
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4938851   0.3095381   0.6782321
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4035243   0.2994784   0.5075701
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.4104037   0.2473114   0.5734960
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1732074   0.0786020   0.2678129
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1828226   0.0877554   0.2778898
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2930977   0.1848672   0.4013282
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                0.4715217   0.2971190   0.6459244
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.3967673   0.2501106   0.5434239
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3629129   0.2476379   0.4781879
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.8000000   0.6984346   0.9015654
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422494   0.8665225
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677828   0.9618469
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5743793   0.4774203   0.6713382
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4709529   0.3804958   0.5614100
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6228380   0.5455821   0.7000939
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2500747   0.1756938   0.3244556
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3047207   0.2388236   0.3706178
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3123776   0.2385325   0.3862227
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2582519   0.2039931   0.3125107
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2530382   0.1711076   0.3349688
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2740789   0.2035226   0.3446352
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532


### Parameter: E(Y)


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8173516   0.7660617   0.8686415
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           NA                   NA                0.2284264   0.1696529   0.2871999
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.2165899   0.1616567   0.2715231
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.2190476   0.1629743   0.2751210
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3013699   0.2404592   0.3622805
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2291667   0.1932828   0.2650505
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED       PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598


### Parameter: RR


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.0319661   0.7693601   1.3842075
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.0414440   0.7621294   1.4231254
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9431404   0.6890565   1.2909157
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.0856782   0.7782398   1.5145681
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7578992   0.4176270   1.3754168
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.0832393   0.6443685   1.8210193
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                1.1154051   0.8690808   1.4315452
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.9251421   0.7145087   1.1978691
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0174118   0.8803783   1.1757749
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0966667   0.9387248   1.2811824
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.1198977   0.9187966   1.3650147
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.2719860   1.0648220   1.5194543
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.4557290   1.1422825   1.8551865
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.5029730   1.1665807   1.9363665
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1078616   0.9005252   1.3629349
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0418368   0.8414753   1.2899057
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2083333   0.9813886   1.4877587
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.0732323   0.8734742   1.3186739
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                0.8262548   0.4132357   1.6520764
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  0%                0.6489218   0.3298309   1.2767136
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.4448475   0.2420838   0.8174412
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                0.6081156   0.3239015   1.1417194
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.7783084   0.3873515   1.5638611
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.4181414   0.7149341   2.8130216
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                1.2298545   0.8081855   1.8715284
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.9512562   0.6206382   1.4579966
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0656854   0.6681086   1.6998513
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.1397910   0.6527600   1.9902008
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                2.2467738   1.3201413   3.8238275
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                2.6879656   1.6295738   4.4337720
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.6959613   1.0268968   2.8009484
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.9338697   1.1506927   3.2500873
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.4572328   1.0412518   2.0393986
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                0.9605972   0.6566643   1.4052035
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                0.8285191   0.4262671   1.6103609
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  0%                0.6597111   0.3712110   1.1724295
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.2374900   0.7630508   2.0069195
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.2169753   0.7183600   2.0616808
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.8170407   0.5191292   1.2859141
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.8309700   0.4821312   1.4322060
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                1.0555122   0.4946375   2.2523687
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.6921773   0.8752577   3.2715667
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8414613   0.4984588   1.4204928
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  0%                0.7696633   0.4723114   1.2542182
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9429825   0.7755438   1.1465708
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0185185   0.8168617   1.2699579
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.8199337   0.6376261   1.0543660
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0843672   0.8812288   1.3343323
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.2185187   0.8504770   1.7458296
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.2491372   0.8577459   1.8191211
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9798117   0.6691893   1.4346179
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0612851   0.7621418   1.4778430
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2350000   0.9028110   1.6894178
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1375000   0.8488789   1.5242530


### Parameter: PAR


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0141284   -0.0759110    0.1041678
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0071024   -0.1266353    0.1124305
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0164974   -0.0997776    0.0667829
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0064023   -0.0960590    0.0832545
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0194793   -0.0402523    0.0792108
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0801289    0.0114491    0.1488088
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0919521    0.0431468    0.1407574
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0145459   -0.0212757    0.0503675
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0500700   -0.0304974    0.1306374
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                -0.0332558   -0.0866666    0.0201549
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.1009908   -0.1843589   -0.0176227
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0079731   -0.0934682    0.1094143
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0167013   -0.0726410    0.1060436
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0241343   -0.0449800    0.0932485
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1184605    0.0686350    0.1682860
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0546859    0.0137176    0.0956542
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0170908   -0.0120566    0.0462383
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0496066   -0.1350842    0.0358709
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0623897   -0.0663868    0.1911663
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0718072   -0.2367602    0.0931458
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0381328   -0.0423712    0.1186367
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0755486   -0.2276793    0.0765822
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0152778   -0.0943813    0.0638257
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0004662   -0.0828817    0.0819493
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0503639   -0.0130562    0.1137840
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0045939   -0.0341478    0.0433357
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0706861   -0.0474877    0.1888598


### Parameter: PAF


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0268936   -0.1605514    0.1840636
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0134370   -0.2667930    0.1892483
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0632899   -0.4358817    0.2126194
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0112782   -0.1822739    0.1349860
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0238322   -0.0521798    0.0943528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1326272    0.0102085    0.2399050
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.2445617    0.1038273    0.3631952
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0369590   -0.0585442    0.1238458
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0662344   -0.0474806    0.1676044
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                -0.1455867   -0.4037931    0.0651266
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.4662767   -0.9017924   -0.1304953
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0363988   -0.5584904    0.4042136
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0482885   -0.2481932    0.2743474
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0800818   -0.1805048    0.2831461
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.5169185    0.2611179    0.6841611
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.3427343    0.0371378    0.5513395
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0900024   -0.0769241    0.2310548
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.1736232   -0.5136613    0.0900267
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.1471280   -0.2180776    0.4028372
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1701278   -0.6347872    0.1624604
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.1804331   -0.3023709    0.4842560
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1907921   -0.6444667    0.1377230
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0194690   -0.1255240    0.0765927
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0008123   -0.1552298    0.1329644
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1676346   -0.0728273    0.3541997
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0174777   -0.1415406    0.1543446
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0993184   -0.0847491    0.2521521

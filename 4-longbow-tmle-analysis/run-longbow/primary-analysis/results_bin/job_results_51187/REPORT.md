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

agecat                       studyid                 country                        perdiar6    ever_stunted   n_cell     n
---------------------------  ----------------------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       36   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1       36   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       41   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       44   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       27   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       33   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      165   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     1       27   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     0       24   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     1       25   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       54   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       52   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    0       23   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    1       31   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     0       54   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     1       20   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       54   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       14   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       49   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    1       21   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     0       37   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     1       40   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       29   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       51   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    0       49   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    1       60   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      103   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1      105   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       23   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       30   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       20   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       74   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       16   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       69   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       35   219
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                     0       30   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                     1       17   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       25   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       29   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                    0       41   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                    1       59   201
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0       69   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       72   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       67   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       92   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       73   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1      155   528
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      149   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1       53   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      137   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1      101   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      110   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       84   634
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
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                     0       30   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                     1        9   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       31   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1       15   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                    0       18   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                    1       11   114
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      167   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       78   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      151   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       75   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      200   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1      119   790
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                     0      141   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                     1       61   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]               0      119   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]               1       67   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                    0      195   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                    1       89   672
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     0       79   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     1       28   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        8   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    0       44   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    1        9   197
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       50   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1       22   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       73   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       48   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      174   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     1       18   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     0       38   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     1       11   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       89   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       17   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    0       38   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    1       16   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     0       65   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     1        9   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       65   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        3   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       68   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        2   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     0       53   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     1       24   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       47   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       33   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    0       74   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    1       35   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      146   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       62   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       38   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       15   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       68   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       59   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       27   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       13   219
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                     0       30   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                     1       17   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       30   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       24   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                    0       53   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                    1       47   201
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      126   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1       15   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      120   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       39   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      161   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       67   528
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      183   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1       19   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      193   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       45   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      157   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       37   634
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
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         0%                     0       37   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         0%                     1        2   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       43   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        3   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         >5%                    0       24   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         >5%                    1        5   114
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      213   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     1        7   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      211   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1        3   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      278   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       12   724
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                     0      181   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                     1       12   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]               0      169   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]               1       17   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                    0      259   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                    1       20   658
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     0       88   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     1       19   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       30   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        7   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    0       49   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    1        4   197
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     0       28   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     1       14   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       39   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       32   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       25   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       21   159
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     0      145   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     1        9   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   168
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     0       16   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     1       14   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       53   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       35   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    0       22   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    1       15   155
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     0       53   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     1       11   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       53   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       11   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    0       48   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    1       19   195
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     0       19   149
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     1       16   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       26   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       18   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    0       45   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    1       25   149
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0       75   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       43   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       20   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       15   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        6   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   159
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       13   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       48   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       14   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       43   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       22   145
6-24 months                  ki1000109-ResPak        PAKISTAN                       0%                     0       20    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       0%                     1        0    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       22    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        5    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       >5%                    0       36    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       >5%                    1       12    95
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     0       37   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     1       57   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       59   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       53   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       51   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       88   345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     0       93   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     1       34   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      126   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       56   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      101   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       47   457
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
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                     0       30   104
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                     1        7   104
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       31   104
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]               1       12   104
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                    0       18   104
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                    1        6   104
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      164   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       78   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      144   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       76   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      195   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1      113   770
6-24 months                  ki1114097-CMIN          PERU                           0%                     0      128   585
6-24 months                  ki1114097-CMIN          PERU                           0%                     1       50   585
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]               0      114   585
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]               1       50   585
6-24 months                  ki1114097-CMIN          PERU                           >5%                    0      171   585
6-24 months                  ki1114097-CMIN          PERU                           >5%                    1       72   585
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
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
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
![](/tmp/4032404d-fee4-40e5-a92c-deffa99fd490/97a02210-e49c-4b14-b4b6-3d9955dc1d17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4032404d-fee4-40e5-a92c-deffa99fd490/97a02210-e49c-4b14-b4b6-3d9955dc1d17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4032404d-fee4-40e5-a92c-deffa99fd490/97a02210-e49c-4b14-b4b6-3d9955dc1d17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4032404d-fee4-40e5-a92c-deffa99fd490/97a02210-e49c-4b14-b4b6-3d9955dc1d17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4992655   0.3900698   0.6084612
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5202214   0.4163727   0.6240701
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5506347   0.4241081   0.6771613
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4968432   0.3571575   0.6365289
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4962521   0.4024297   0.5900744
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.5611165   0.4331100   0.6891229
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2882241   0.1835937   0.3928545
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2070361   0.1106861   0.3033860
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.3060997   0.1977430   0.4144563
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                0.5764979   0.4693583   0.6836375
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.6390353   0.5311262   0.7469445
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.5355386   0.4399809   0.6310962
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7872340   0.7043099   0.8701582
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3476499   0.2045606   0.4907391
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.5274035   0.3928932   0.6619139
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.5834247   0.4855613   0.6812881
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5250875   0.4446227   0.6055523
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5847617   0.5101447   0.6593788
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6652664   0.6047965   0.7257363
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2693408   0.2105088   0.3281727
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4214670   0.3621475   0.4807865
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.4272915   0.3599167   0.4946662
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.3752115   0.3233165   0.4271065
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4330785   0.3619800   0.5041770
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.3957838   0.3281737   0.4633939
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7058824   0.5972606   0.8145041
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8529412   0.7335396   0.9723428
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7575758   0.6538770   0.8612745
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                0.2307692   0.0979545   0.3635840
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.3260870   0.1900205   0.4621534
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  NA                0.3793103   0.2019335   0.5566872
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3237301   0.2651641   0.3822962
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3386093   0.2767842   0.4004345
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3741310   0.3209996   0.4272624
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                0.2999762   0.2360105   0.3639419
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.3606481   0.2912708   0.4300254
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  NA                0.3126162   0.2584128   0.3668196
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                0.2616822   0.1781854   0.3451791
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2162162   0.0832337   0.3491987
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  NA                0.1698113   0.0684699   0.2711527
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2961198   0.1934744   0.3987652
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1382744   0.0615139   0.2150348
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2047389   0.1034783   0.3059996
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.2352579   0.1128686   0.3576472
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1576177   0.0872922   0.2279431
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2884015   0.1634514   0.4133515
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                0.3349100   0.2298686   0.4399513
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4153119   0.3035825   0.5270413
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3132543   0.2239536   0.4025550
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2755599   0.1851889   0.3659309
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3160148   0.2168141   0.4152155
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3689737   0.2195121   0.5184354
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3695176   0.2297811   0.5092541
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.4541519   0.3194821   0.5888217
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.4702965   0.3719388   0.5686543
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1091539   0.0579742   0.1603337
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2482317   0.1806700   0.3157935
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2942406   0.2348053   0.3536758
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0958775   0.0553885   0.1363666
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1900742   0.1395676   0.2405809
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1868741   0.1309081   0.2428401
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1738941   0.1334056   0.2143825
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2482712   0.1841424   0.3123999
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1690921   0.1172024   0.2209818
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3627827   0.2456094   0.4799561
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.2807657   0.1321683   0.4293631
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2225045   0.1232699   0.3217391
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                0.0618725   0.0276707   0.0960743
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0906892   0.0487194   0.1326591
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  NA                0.0718996   0.0413129   0.1024863
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3528459   0.2113881   0.4943038
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4550783   0.3382963   0.5718603
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4605484   0.3122256   0.6088713
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4707612   0.2756469   0.6658754
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.3999574   0.2971806   0.5027342
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.4022353   0.2385114   0.5659593
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1661990   0.0713337   0.2610644
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1692533   0.0743992   0.2641075
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2784745   0.1692089   0.3877401
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                0.4541330   0.2802638   0.6280022
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4080108   0.2572679   0.5587538
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3617243   0.2465947   0.4768540
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7868852   0.6837639   0.8900065
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422521   0.8665198
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677863   0.9618433
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5991855   0.5047729   0.6935981
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4870175   0.3949489   0.5790861
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6262468   0.5463579   0.7061356
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2652838   0.1903998   0.3401678
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3105903   0.2449292   0.3762514
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3133357   0.2396458   0.3870256
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2596741   0.2045924   0.3147557
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2469510   0.1650950   0.3288071
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2755832   0.2043360   0.3468304
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                0.1891892   0.0623793   0.3159991
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.2790698   0.1443551   0.4137845
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  NA                0.2500000   0.0759231   0.4240769
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3218776   0.2628328   0.3809224
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3468539   0.2836011   0.4101068
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3669976   0.3129547   0.4210406
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                0.2789344   0.2126030   0.3452658
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.2993437   0.2282363   0.3704512
6-24 months                  ki1114097-CMIN          PERU                           >5%                  NA                0.2932041   0.2352762   0.3511321


### Parameter: E(Y)


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       NA                   NA                0.5223881   0.4531624   0.5916138
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         NA                   NA                0.3070175   0.2219720   0.3920631
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.3443038   0.3111501   0.3774575
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           NA                   NA                0.3229167   0.2875370   0.3582963
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           NA                   NA                0.2284264   0.1696529   0.2871999
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2968037   0.2361590   0.3574483
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       NA                   NA                0.4378109   0.3690538   0.5065681
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2291667   0.1932828   0.2650505
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED       PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598
6-24 months                  ki1114097-CMIN          BRAZIL                         NA                   NA                0.2403846   0.1578607   0.3229085
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.3467532   0.3131150   0.3803915
6-24 months                  ki1114097-CMIN          PERU                           NA                   NA                0.2940171   0.2570662   0.3309680


### Parameter: RR


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.0419734   0.7827083   1.3871178
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.1028895   0.8098259   1.5020084
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9988101   0.7158875   1.3935452
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.1293632   0.7904356   1.6136180
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7183162   0.3975275   1.2979687
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.0620197   0.6389917   1.7651024
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                1.1084782   0.8613626   1.4264885
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.9289515   0.7190405   1.2001422
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0311606   0.8901510   1.1945076
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.1114865   0.9493007   1.3013814
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                1.5170537   0.9349909   2.4614698
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  0%                1.6781962   1.0763048   2.6166773
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.1136463   0.9151521   1.3551934
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.2669630   1.0616887   1.5119266
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.5648096   1.2155892   2.0143557
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.5864346   1.2180481   2.0662358
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1542250   0.9399769   1.4173065
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0548286   0.8510193   1.3074479
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2083333   0.9813886   1.4877587
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.0732323   0.8734742   1.3186739
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                1.4130435   0.6941037   2.8766476
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  0%                1.6436782   0.7829983   3.4504261
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                1.0459617   0.8086943   1.3528423
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.1556879   0.9181820   1.4546293
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.2022557   0.9022327   1.6020464
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  0%                1.0421367   0.7918349   1.3715598
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                0.8262548   0.4132357   1.6520764
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  0%                0.6489218   0.3298309   1.2767136
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.4669541   0.2430048   0.8972915
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                0.6914058   0.3803169   1.2569568
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.6699783   0.3372551   1.3309535
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.2258950   0.6232394   2.4113024
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                1.2400704   0.8205139   1.8741603
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.9353390   0.6122967   1.4288155
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.1468099   0.7285915   1.8050896
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.3389964   0.7958059   2.2529508
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                1.2290400   0.7603284   1.9866934
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  0%                1.2727312   0.8257455   1.9616755
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                2.2741437   1.3226826   3.9100306
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                2.6956480   1.6175727   4.4922359
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.9824695   1.2044601   3.2630267
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.9490922   1.1636934   3.2645716
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.4277150   1.0198662   1.9986643
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                0.9723858   0.6680097   1.4154498
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                0.7739224   0.4175305   1.4345201
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  0%                0.6133272   0.3539085   1.0629025
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.4657449   0.7124199   3.0156487
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  0%                1.1620616   0.5781032   2.3358929
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.2897366   0.8020263   2.0740224
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.3052395   0.7821554   2.1781482
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.8495973   0.5215927   1.3838682
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.8544361   0.4779512   1.5274804
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                1.0183774   0.4576611   2.2660709
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.6755482   0.8378768   3.3506854
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8984390   0.5274110   1.5304812
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  0%                0.7965162   0.4846838   1.3089732
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9586988   0.7863592   1.1688087
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0354938   0.8285044   1.2941965
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.8127992   0.6382351   1.0351085
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0451634   0.8551497   1.2773982
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1707850   0.8284509   1.6545789
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1811339   0.8207032   1.6998561
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9510039   0.6436395   1.4051476
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0612658   0.7606252   1.4807360
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2350000   0.9028110   1.6894178
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1375000   0.8488789   1.5242530
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                1.4750831   0.6457765   3.3693854
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  0%                1.3214286   0.5026878   3.4736736
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                1.0775957   0.8320248   1.3956467
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.1401776   0.9010533   1.4427615
6-24 months                  ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.0731690   0.7669180   1.5017141
6-24 months                  ki1114097-CMIN          PERU                           >5%                  0%                1.0511580   0.7712798   1.4325970


### Parameter: PAR


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0214718   -0.0666946    0.1096383
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0199032   -0.1005909    0.1403972
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0287901   -0.1132175    0.0556372
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0088287   -0.0994360    0.0817786
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0255513   -0.0349031    0.0860057
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.1747382    0.0478095    0.3016668
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0790792    0.0113648    0.1467936
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1060536    0.0566006    0.1555065
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0183567   -0.0178409    0.0545542
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0500700   -0.0304974    0.1306374
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                 0.0762483   -0.0369029    0.1893995
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0205737   -0.0285363    0.0696837
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                 0.0229405   -0.0309696    0.0768505
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                -0.0332558   -0.0866666    0.0201549
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0841382   -0.1641503   -0.0041261
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0247316   -0.1313188    0.0818557
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0109547   -0.0792940    0.1012035
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0212437   -0.0483364    0.0908239
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.0682934   -0.0553134    0.1919001
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1200127    0.0698131    0.1702124
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0634285    0.0258894    0.1009676
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0159987   -0.0130989    0.0450964
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0770685   -0.1657378    0.0116009
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                 0.0125956   -0.0172466    0.0424379
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0685377   -0.0548156    0.1918911
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0578579   -0.2326476    0.1169317
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0440574   -0.0366363    0.1247511
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0581599   -0.2097327    0.0934130
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0075749   -0.0867885    0.0716387
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0252724   -0.1058059    0.0552610
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0344974   -0.0292920    0.0982868
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0031718   -0.0363308    0.0426744
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0706861   -0.0474877    0.1888598
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                 0.0511954   -0.0558040    0.1581948
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0248756   -0.0244430    0.0741943
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                 0.0150827   -0.0406485    0.0708139


### Parameter: PAF


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0412335   -0.1438907    0.1963977
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0385163   -0.2255888    0.2457088
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.1109729   -0.4893062    0.1712512
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0155526   -0.1884531    0.1321938
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0314368   -0.0460885    0.1032166
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.3344988    0.0369842    0.5400991
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1308897    0.0105835    0.2365675
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.2825124    0.1379560    0.4028282
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0466416   -0.0499897    0.1343799
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0662344   -0.0474806    0.1676044
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                 0.2483516   -0.2238161    0.5383495
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0597544   -0.0942372    0.1920748
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                 0.0710414   -0.1119026    0.2238853
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                -0.1455867   -0.4037931    0.0651266
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.3969129   -0.8305182   -0.0660182
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1174749   -0.7571556    0.2893344
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0316734   -0.2676129    0.2602975
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0715751   -0.1949120    0.2786307
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.1559883   -0.1798168    0.3962149
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.5236919    0.2643833    0.6915930
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.3981550    0.1226244    0.5871582
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0842515   -0.0822100    0.2251085
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.2697396   -0.6219312    0.0059759
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                 0.1691412   -0.3424134    0.4857573
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.1626493   -0.1874003    0.4095030
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1401247   -0.6518529    0.2130750
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.2095412   -0.2834021    0.5131494
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1468783   -0.6010529    0.1784594
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0097200   -0.1166819    0.0869965
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0440353   -0.1944562    0.0874427
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1150752   -0.1253736    0.3041494
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0120671   -0.1502662    0.1514909
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0993184   -0.0847491    0.2521521
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                 0.2129730   -0.3802068    0.5512183
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0717387   -0.0819748    0.2036145
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                 0.0512987   -0.1585124    0.2231122

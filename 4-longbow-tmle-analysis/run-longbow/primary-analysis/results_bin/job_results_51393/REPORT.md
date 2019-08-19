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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                 country                        perdiar6    ever_wasted   n_cell     n
----------------------------  ----------------------  -----------------------------  ---------  ------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       65   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       20   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       75   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       23   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       65   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       15   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    0      205   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    1       10   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        1   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    0       36   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    1       23   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       86   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       42   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   0       35   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   1       24   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    0       65   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    1       18   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       63   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       13   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   0       66   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   1       14   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    0       83   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    1        6   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       88   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        5   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   0      111   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   1        9   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      196   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       36   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       53   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        7   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        9   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       97   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       16   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       90   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       44   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2   261
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                    0       37   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                    1       20   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       36   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       35   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                   0       75   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                   1       70   273
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                    0      120   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       37   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      136   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       46   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      165   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       95   599
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                    0      183   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       30   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0      198   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       61   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      184   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       31   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0      307   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       57   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0      149   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       24   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0      190   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       27   754
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                    0       54   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                    1       39   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       40   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       22   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                   0       59   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                   1       54   268
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                    0       40   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                    1        1   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       44   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        3   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                   0       31   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                   1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      223   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       58   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      203   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       57   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      308   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       63   912
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                    0      203   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                    1        9   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]              0      186   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]              1       14   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                   0      285   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                   1       20   717
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                    0      110   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                    1        5   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]              0       42   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]              1        1   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                   0       56   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                   1        1   215
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                    0       78   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                    1        6   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       92   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1        6   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       73   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        7   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    0      209   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    1        6   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        2   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    0       50   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    1        9   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0      108   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       19   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   0       49   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   1       10   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    0       76   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    1        5   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       68   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        8   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   0       78   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   1        2   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    0       89   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    1        0   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       92   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        1   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   0      116   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   1        4   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      222   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1        9   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       57   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        3   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0       10   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        0   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0      108   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       99   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        3   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       46   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0   261
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                    0       42   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                    1       14   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       57   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       14   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                   0      110   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                   1       34   271
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                    0      147   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                    1        5   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      163   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       12   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      225   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       29   581
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                    0      204   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                    1        8   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0      242   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       16   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      201   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       12   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0      354   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1        8   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0      166   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1        6   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0      209   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1        6   749
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                    0       86   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                    1        7   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       50   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       11   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                   0      100   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                   1       13   267
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                    0       41   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                    1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       45   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                   0       30   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                   1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      245   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                    1        4   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      237   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1        6   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      323   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       10   825
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                    0      198   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                    1        3   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]              0      194   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]              1        4   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                   0      285   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                   1       11   695
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                    0      113   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                    1        2   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]              0       43   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]              1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                   0       56   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                   1        1   215
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       54   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       17   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       74   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       18   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       68   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        9   240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                    0      185   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                    1        5   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       15   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        0   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        1   207
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                    0       34   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                    1       16   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       97   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       29   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                   0       40   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                   1       19   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                    0       63   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                    1       17   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       70   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        6   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                   0       66   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                   1       13   235
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                    0       61   270
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                    1        6   270
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       83   270
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        4   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                   0      109   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                   1        7   270
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      165   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       29   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       50   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        6   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        8   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   259
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       91   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       13   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       85   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       11   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       43   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2   245
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                    0       27   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                    1       11   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       37   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       26   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                   0       82   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                   1       47   230
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       96   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       33   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      128   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       43   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      158   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       83   541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                    0      137   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       24   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0      198   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       52   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      181   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       23   615
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0      294   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       51   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0      149   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       21   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0      191   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       24   730
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                    0       51   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                    1       35   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       42   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       17   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                   0       62   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                   1       45   252
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                    0       40   119
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                    1        1   119
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       44   119
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        3   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                   0       31   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                   1        0   119
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      218   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       57   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      200   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       53   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      304   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       59   891
6-24 months                   ki1114097-CMIN          PERU                           0%                    0      192   666
6-24 months                   ki1114097-CMIN          PERU                           0%                    1        7   666
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]              0      182   666
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]              1       10   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                   0      264   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                   1       11   666
6-24 months                   ki1114097-CONTENT       PERU                           0%                    0      112   215
6-24 months                   ki1114097-CONTENT       PERU                           0%                    1        3   215
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]              0       42   215
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]              1        1   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                   0       57   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                   1        0   215


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/0f344d8a-5266-434b-9304-baa9db53c654/a9ba50c3-9a70-475c-a272-f1105e073758/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f344d8a-5266-434b-9304-baa9db53c654/a9ba50c3-9a70-475c-a272-f1105e073758/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f344d8a-5266-434b-9304-baa9db53c654/a9ba50c3-9a70-475c-a272-f1105e073758/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f344d8a-5266-434b-9304-baa9db53c654/a9ba50c3-9a70-475c-a272-f1105e073758/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2319825   0.1418747   0.3220904
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.2335063   0.1487932   0.3182194
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1867152   0.0993334   0.2740969
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   NA                0.3995746   0.2741597   0.5249895
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.3340627   0.2519363   0.4161891
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.4185390   0.2904056   0.5466725
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2148448   0.1243548   0.3053349
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.1686471   0.0832246   0.2540697
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1777156   0.0920126   0.2634187
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   NA                0.0674157   0.0152365   0.1195950
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                0.0537634   0.0078468   0.0996801
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  NA                0.0750000   0.0277960   0.1222040
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                0.3443056   0.2166551   0.4719561
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4970974   0.3781758   0.6160189
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4829582   0.4010871   0.5648292
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2414336   0.1741185   0.3087487
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2550134   0.1915211   0.3185058
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3592693   0.3007116   0.4178270
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1418824   0.0953717   0.1883931
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2381472   0.1868624   0.2894319
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1455621   0.0987835   0.1923406
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1557585   0.1183990   0.1931179
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1412417   0.0888204   0.1936631
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1241050   0.0802093   0.1680006
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4297689   0.3285770   0.5309608
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.3306435   0.2079766   0.4533105
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4684154   0.3757674   0.5610634
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2139315   0.1661661   0.2616969
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2194764   0.1690021   0.2699508
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1673004   0.1292324   0.2053685
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   NA                0.0424528   0.0152937   0.0696120
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0700000   0.0346144   0.1053856
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  NA                0.0655738   0.0377742   0.0933734
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.0714286   0.0162485   0.1266087
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.0612245   0.0136681   0.1087809
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0875000   0.0254625   0.1495375
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   NA                0.1525424   0.0606108   0.2444739
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1496063   0.0874451   0.2117675
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.1694915   0.0735611   0.2654219
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                0.2631015   0.1492577   0.3769453
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.2006594   0.1083561   0.2929627
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.2412200   0.1715673   0.3108727
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.0328947   0.0045155   0.0612740
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.0685714   0.0310957   0.1060471
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.1141732   0.0750295   0.1533169
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0377358   0.0120660   0.0634057
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.0620155   0.0325642   0.0914668
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.0563380   0.0253506   0.0873255
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0220994   0.0069456   0.0372533
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0348837   0.0074443   0.0623232
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0279070   0.0058762   0.0499377
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   NA                0.0752688   0.0215487   0.1289889
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.1803279   0.0836673   0.2769885
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      >5%                  NA                0.1150442   0.0561033   0.1739852
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2394366   0.1399674   0.3389058
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1956522   0.1144206   0.2768838
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1168831   0.0449723   0.1887940
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   NA                0.2778745   0.1438977   0.4118513
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.2294454   0.1557593   0.3031315
6-24 months                   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.3080289   0.1864148   0.4296429
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2125000   0.1226674   0.3023326
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.0789474   0.0181929   0.1397019
6-24 months                   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1645570   0.0826205   0.2464934
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   NA                0.2944041   0.1429785   0.4458297
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4156176   0.2926162   0.5386189
6-24 months                   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.3629980   0.2792332   0.4467627
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2573101   0.1817743   0.3328460
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2574216   0.1915873   0.3232559
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3361413   0.2762473   0.3960353
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1462367   0.0909864   0.2014871
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2111077   0.1613881   0.2608272
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1097968   0.0665352   0.1530585
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1488978   0.1111904   0.1866052
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1219584   0.0729720   0.1709447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1098466   0.0679616   0.1517317
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4040069   0.2985878   0.5094260
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.2876129   0.1698591   0.4053667
6-24 months                   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4172983   0.3230163   0.5115803
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2133571   0.1651076   0.2616066
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2079071   0.1576235   0.2581907
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1618113   0.1237599   0.1998627
6-24 months                   ki1114097-CMIN          PERU            0%                   NA                0.0351759   0.0095609   0.0607909
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0520833   0.0206306   0.0835361
6-24 months                   ki1114097-CMIN          PERU            >5%                  NA                0.0400000   0.0168221   0.0631779


### Parameter: E(Y)


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           NA                   NA                0.3617886   0.3016193   0.4219579
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           NA                   NA                0.1882845   0.1386174   0.2379516
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            NA                   NA                0.0662252   0.0381322   0.0943181
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2971619   0.2605332   0.3337907
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1951754   0.1694388   0.2209121
0-24 months (no birth wast)   ki1114097-CMIN          PERU            NA                   NA                0.0599721   0.0425806   0.0773636
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           NA                   NA                0.1551020   0.1096803   0.2005238
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      NA                   NA                0.1161049   0.0776073   0.1546024
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA           NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL           NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki1000109-ResPak        PAKISTAN        NA                   NA                0.3652174   0.3028556   0.4275792
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1114097-CMIN          BANGLADESH      NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1896745   0.1639180   0.2154311
6-24 months                   ki1114097-CMIN          PERU            NA                   NA                0.0420420   0.0267891   0.0572949


### Parameter: RR


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                1.0065685   0.5930515   1.7084185
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.8048674   0.4383904   1.4777045
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.8360458   0.5606926   1.2466234
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  0%                1.0474615   0.6749590   1.6255440
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             0%                0.7849719   0.4062789   1.5166449
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  0%                0.8271815   0.4358328   1.5699349
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             0%                0.7974910   0.2518616   2.5251640
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  0%                1.1125000   0.4102520   3.0168196
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             0%                1.4437678   0.9280139   2.2461576
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  0%                1.4027020   0.9323251   2.1103936
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.0562467   0.7270113   1.5345801
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.4880668   1.0780912   2.0539477
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.6784826   1.1364374   2.4790664
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.0259347   0.6490999   1.6215407
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                0.9067997   0.5827641   1.4110097
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.7967783   0.5195486   1.2219370
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.7693519   0.4955587   1.1944142
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  0%                1.0899239   0.8018219   1.4815436
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                1.0259193   0.7452234   1.4123420
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.7820281   0.5689145   1.0749734
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             0%                1.6488888   0.7295974   3.7264856
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  0%                1.5446265   0.7169949   3.3275981
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.8571429   0.2866027   2.5634573
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                1.2250000   0.4292932   3.4955711
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.9807524   0.4716837   2.0392380
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  0%                1.1111111   0.4860675   2.5399102
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             0%                0.7626691   0.4051570   1.4356510
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  0%                0.9168324   0.5455295   1.5408547
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                2.0845714   0.7507348   5.7882467
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                3.4708661   1.3716980   8.7824812
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.6434109   0.7168794   3.7674385
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.4929577   0.6224839   3.5806914
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                1.5784884   0.5559638   4.4816327
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                1.2627907   0.4438198   3.5929903
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                2.3957845   0.9813036   5.8491418
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      >5%                  0%                1.5284450   0.6348869   3.6796223
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.8171355   0.4541703   1.4701766
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.4881589   0.2323583   1.0255675
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.8257159   0.4637726   1.4701318
6-24 months                   ki0047075b-MAL-ED       INDIA           >5%                  0%                1.1085179   0.5945128   2.0669227
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             0%                0.3715170   0.1544035   0.8939232
6-24 months                   ki0047075b-MAL-ED       NEPAL           >5%                  0%                0.7743857   0.4029837   1.4880830
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             0%                1.4117248   0.7796574   2.5562084
6-24 months                   ki1000109-ResPak        PAKISTAN        >5%                  0%                1.2329922   0.7012164   2.1680468
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.0004332   0.6776210   1.4770299
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.3063664   0.9271981   1.8405917
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.4436023   0.9276475   2.2465295
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                0.7508158   0.4358039   1.2935275
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                0.8190744   0.5096463   1.3163696
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.7377319   0.4669895   1.1654404
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.7119010   0.4381873   1.1565900
6-24 months                   ki1114097-CMIN          BANGLADESH      >5%                  0%                1.0328990   0.7311146   1.4592517
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                0.9744561   0.7003165   1.3559079
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.7584059   0.5476933   1.0501856
6-24 months                   ki1114097-CMIN          PERU            0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             0%                1.4806548   0.5749123   3.8133446
6-24 months                   ki1114097-CMIN          PERU            >5%                  0%                1.1371429   0.4483913   2.8838514


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0114502   -0.0849063   0.0620058
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0377860   -0.1467557   0.0711837
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   NA                -0.0265603   -0.0978108   0.0446902
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   NA                -0.0011906   -0.0448613   0.0424802
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                 0.1135698   -0.0013464   0.2284861
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0557284   -0.0037002   0.1151569
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0357013   -0.0045815   0.0759841
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0125224   -0.0385289   0.0134842
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0006644   -0.0827787   0.0814499
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0187561   -0.0581893   0.0206771
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   NA                 0.0175193   -0.0070549   0.0420935
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.0010905   -0.0445425   0.0467235
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0025597   -0.0777153   0.0828346
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                -0.0343192   -0.1350107   0.0663722
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0462791    0.0168369   0.0757213
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0149728   -0.0080732   0.0380187
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                 0.0046028   -0.0072773   0.0164829
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   NA                 0.0408361   -0.0077185   0.0893906
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0561033   -0.1363940   0.0241874
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0055341   -0.1234408   0.1123726
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   NA                -0.0593085   -0.1279023   0.0092853
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   NA                 0.0708133   -0.0692872   0.2109138
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0365900   -0.0304884   0.1036685
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0147389   -0.0330355   0.0625132
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0173909   -0.0436647   0.0088829
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0190862   -0.1043039   0.0661314
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0236826   -0.0632489   0.0158838
6-24 months                   ki1114097-CMIN          PERU            0%                   NA                 0.0068662   -0.0154201   0.0291524


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0519208   -0.4436176    0.2334969
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.1044422   -0.4509627    0.1593219
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   NA                -0.1410647   -0.5876067    0.1798796
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   NA                -0.0179775   -0.9455866    0.4673698
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                 0.2480365   -0.0513877    0.4621879
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.1875353   -0.0386002    0.3644341
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.2010392   -0.0591656    0.3973196
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0874248   -0.2844910    0.0794075
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0015484   -0.2124149    0.1726435
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0960985   -0.3179538    0.0884112
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   NA                 0.2921237   -0.2485810    0.5986733
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.0150376   -0.8657846    0.4800306
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0165031   -0.6646111    0.4189237
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                -0.1500082   -0.6865133    0.2158266
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.5845252    0.0640759    0.8155627
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.2840671   -0.3026753    0.6065329
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                 0.1723757   -0.4065203    0.5130095
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   NA                 0.3517170   -0.2098491    0.6526254
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.3060179   -0.8219023    0.0637902
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0203204   -0.5592534    0.3323383
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   NA                -0.3871528   -0.9051231   -0.0100097
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   NA                 0.1938936   -0.2978775    0.4993305
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.1244982   -0.1358955    0.3251990
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0915597   -0.2594595    0.3447477
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.1322435   -0.3495988    0.0501063
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0495849   -0.2960115    0.1499856
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.1248590   -0.3538926    0.0654296
6-24 months                   ki1114097-CMIN          PERU            0%                   NA                 0.1633166   -0.5707920    0.5543400

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

agecat                        studyid                 country                        perdiar6    ever_wasted   n_cell     n
----------------------------  ----------------------  -----------------------------  ---------  ------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       65   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       20   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       75   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       23   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       65   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       15   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    0      205   233
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    1       11   233
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   233
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   233
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1   233
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        1   233
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    0       35   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    1       24   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       85   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       43   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   0       35   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   1       24   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    0       65   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    1       18   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       63   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       13   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   0       65   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   1       15   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    0       83   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    1        6   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       88   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        5   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   0      110   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   1       10   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      195   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       37   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       53   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        7   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        9   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       96   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       17   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       88   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       14   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       43   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        3   261
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       0%                    0      159   377
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       0%                    1      181   377
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       (0%, 5%]              0       14   377
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       (0%, 5%]              1       21   377
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       >5%                   0        1   377
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN                       >5%                   1        1   377
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
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    0      209   233
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    1        7   233
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   233
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   233
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        2   233
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0   233
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    0       49   244
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    1       10   244
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0      107   244
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       20   244
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   0       49   244
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   1        9   244
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    0       76   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    1        5   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       68   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        8   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   0       77   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   1        3   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    0       89   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    1        0   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       92   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        1   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   0      116   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   1        4   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      220   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       11   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       57   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        3   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0       10   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        0   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0      108   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       98   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        4   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       45   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        1   261
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       0%                    0      267   375
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       0%                    1       71   375
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       (0%, 5%]              0       26   375
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       (0%, 5%]              1        9   375
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       >5%                   0        1   375
0-6 months (no birth wast)    ki1000109-EE            PAKISTAN                       >5%                   1        1   375
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
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      200   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       13   683
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
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                    0      113   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                    1        2   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]              0       43   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]              1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                   0       56   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                   1        1   215
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       55   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       16   240
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
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                   0      108   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                   1        8   270
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      164   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       30   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       50   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        6   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        8   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   259
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       90   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       14   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       84   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       43   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2   245
6-24 months                   ki1000109-EE            PAKISTAN                       0%                    0      191   374
6-24 months                   ki1000109-EE            PAKISTAN                       0%                    1      146   374
6-24 months                   ki1000109-EE            PAKISTAN                       (0%, 5%]              0       21   374
6-24 months                   ki1000109-EE            PAKISTAN                       (0%, 5%]              1       14   374
6-24 months                   ki1000109-EE            PAKISTAN                       >5%                   0        1   374
6-24 months                   ki1000109-EE            PAKISTAN                       >5%                   1        1   374
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       96   542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       33   542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      129   542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       43   542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      158   542
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       83   542
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
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a61da0ab-41bc-4be8-9279-80645411cd79/d38d91a6-3dc2-4cd5-96a5-11d8a3fdca2a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a61da0ab-41bc-4be8-9279-80645411cd79/d38d91a6-3dc2-4cd5-96a5-11d8a3fdca2a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a61da0ab-41bc-4be8-9279-80645411cd79/d38d91a6-3dc2-4cd5-96a5-11d8a3fdca2a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a61da0ab-41bc-4be8-9279-80645411cd79/d38d91a6-3dc2-4cd5-96a5-11d8a3fdca2a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.2328752   0.1410967   0.3246536
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.2325455   0.1454654   0.3196256
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.1947753   0.1049899   0.2845606
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0%                   NA                0.3980625   0.2660987   0.5300263
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.3391873   0.2578259   0.4205486
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.3916129   0.2595064   0.5237194
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0%                   NA                0.2139528   0.1239408   0.3039648
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        (0%, 5%]             NA                0.1649320   0.0794325   0.2504315
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        >5%                  NA                0.1871718   0.1006996   0.2736440
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         0%                   NA                0.0674157   0.0152365   0.1195950
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         (0%, 5%]             NA                0.0537634   0.0078468   0.0996801
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         >5%                  NA                0.0833333   0.0338005   0.1328661
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2422353   0.1727159   0.3117546
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.2578874   0.1945741   0.3212007
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.3587146   0.3000355   0.4173937
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.1518039   0.1039249   0.1996829
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2276621   0.1765097   0.2788146
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1403900   0.0929162   0.1878637
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.1564911   0.1191378   0.1938443
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1394913   0.0874009   0.1915816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.1243568   0.0803466   0.1683669
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   0%                   NA                0.4094926   0.3034156   0.5155696
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.3643802   0.2442470   0.4845133
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.4884960   0.3956164   0.5813756
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.0714286   0.0162485   0.1266087
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.0612245   0.0136681   0.1087809
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.0875000   0.0254625   0.1495375
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        0%                   NA                0.1694915   0.0735603   0.2654227
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1574803   0.0939997   0.2209609
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        >5%                  NA                0.1551724   0.0618003   0.2485445
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0328947   0.0045155   0.0612740
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0685714   0.0310957   0.1060471
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.1141732   0.0750295   0.1533169
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0377358   0.0120660   0.0634057
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0620155   0.0325642   0.0914668
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.0610329   0.0288605   0.0932053
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0220994   0.0069456   0.0372533
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0348837   0.0074443   0.0623232
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0279070   0.0058762   0.0499377
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   0%                   NA                0.0752688   0.0215487   0.1289889
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.1803279   0.0836673   0.2769885
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   >5%                  NA                0.1150442   0.0561033   0.1739852
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.2253521   0.1279634   0.3227408
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1956522   0.1144206   0.2768838
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.1168831   0.0449723   0.1887940
6-24 months                   ki0047075b-MAL-ED       INDIA        0%                   NA                0.3240848   0.1939585   0.4542110
6-24 months                   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.2314449   0.1570259   0.3058638
6-24 months                   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.3146994   0.1900858   0.4393130
6-24 months                   ki0047075b-MAL-ED       NEPAL        0%                   NA                0.2125000   0.1226674   0.3023326
6-24 months                   ki0047075b-MAL-ED       NEPAL        (0%, 5%]             NA                0.0789474   0.0181929   0.1397019
6-24 months                   ki0047075b-MAL-ED       NEPAL        >5%                  NA                0.1645570   0.0826205   0.2464934
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2615638   0.1839952   0.3391323
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.2529388   0.1880720   0.3178057
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.3378471   0.2777080   0.3979862
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.1509267   0.0956279   0.2062255
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2090960   0.1584555   0.2597364
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1135008   0.0698075   0.1571942
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.1477405   0.1100570   0.1854240
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1250974   0.0745565   0.1756384
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.1109043   0.0687085   0.1531001
6-24 months                   ki1114097-CMIN          BANGLADESH   0%                   NA                0.4096887   0.3023111   0.5170663
6-24 months                   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.2952501   0.1758608   0.4146393
6-24 months                   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.4188578   0.3254720   0.5122436


### Parameter: E(Y)


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        NA                   NA                0.3699187   0.3094659   0.4303715
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1924686   0.1423823   0.2425550
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         NA                   NA                0.0695364   0.0408008   0.0982721
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2971619   0.2605332   0.3337907
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   NA                   NA                0.4291045   0.3697365   0.4884725
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        NA                   NA                0.1598361   0.1137612   0.2059110
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   NA                   NA                0.1161049   0.0776073   0.1546024
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1114097-CMIN          BANGLADESH   NA                   NA                0.3849206   0.3247254   0.4451159


### Parameter: RR


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.9985843   0.5794094   1.7210121
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.8363934   0.4556004   1.5354551
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.8520955   0.5656094   1.2836892
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        >5%                  0%                0.9837975   0.6116809   1.5822915
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        (0%, 5%]             0%                0.7708803   0.3949494   1.5046395
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        >5%                  0%                0.8748277   0.4673255   1.6376669
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         (0%, 5%]             0%                0.7974910   0.2518616   2.5251640
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         >5%                  0%                1.2361111   0.4658353   3.2800664
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.0646153   0.7303490   1.5518689
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.4808522   1.0646341   2.0597905
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.4997117   1.0192412   2.2066761
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                0.9248112   0.5828639   1.4673679
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.8913688   0.5721635   1.3886560
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.7946573   0.5185323   1.2178225
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.8898334   0.5846798   1.3542516
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.1929301   0.8641324   1.6468335
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8571429   0.2866027   2.5634573
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                1.2250000   0.4292932   3.4955711
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.9291339   0.4637685   1.8614668
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        >5%                  0%                0.9155172   0.4007733   2.0913862
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                2.0845714   0.7507348   5.7882467
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                3.4708661   1.3716980   8.7824812
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.6434109   0.7168794   3.7674385
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.6173709   0.6840090   3.8243481
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.5784884   0.5559638   4.4816327
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                1.2627907   0.4438198   3.5929903
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                2.3957845   0.9813036   5.8491418
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   >5%                  0%                1.5284450   0.6348869   3.6796223
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8682065   0.4768229   1.5808440
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.5186688   0.2445485   1.1000571
6-24 months                   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.7141492   0.4266107   1.1954908
6-24 months                   ki0047075b-MAL-ED       INDIA        >5%                  0%                0.9710404   0.5523372   1.7071445
6-24 months                   ki0047075b-MAL-ED       NEPAL        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        (0%, 5%]             0%                0.3715170   0.1544035   0.8939232
6-24 months                   ki0047075b-MAL-ED       NEPAL        >5%                  0%                0.7743857   0.4029837   1.4880830
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.9670256   0.6533351   1.4313306
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.2916432   0.9146239   1.8240747
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3854144   0.8929590   2.1494527
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                0.7520264   0.4417888   1.2801226
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.8467375   0.5253653   1.3646969
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.7506697   0.4748781   1.1866306
6-24 months                   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.7206693   0.4444325   1.1686008
6-24 months                   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0223807   0.7247345   1.4422694


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0123429   -0.0875130   0.0628273
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0281438   -0.1427308   0.0864432
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0%                   NA                -0.0214842   -0.0928340   0.0498656
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         0%                   NA                 0.0021207   -0.0419662   0.0462076
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0549267   -0.0064472   0.1163006
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0257798   -0.0157551   0.0673147
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0132550   -0.0392303   0.0127203
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0196119   -0.0675541   0.1067780
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0010905   -0.0445425   0.0467235
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0096555   -0.0925720   0.0732611
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0462791    0.0168369   0.0757213
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0164369   -0.0067683   0.0396421
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0046028   -0.0072773   0.0164829
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0408361   -0.0077185   0.0893906
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0461854   -0.1251580   0.0327871
6-24 months                   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0517443   -0.1661407   0.0626520
6-24 months                   ki0047075b-MAL-ED       NEPAL        0%                   NA                -0.0593085   -0.1279023   0.0092853
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0317942   -0.0368449   0.1004333
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0100490   -0.0380352   0.0581331
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0162337   -0.0424719   0.0100046
6-24 months                   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0247681   -0.1121115   0.0625753


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0559685   -0.4580094    0.2352111
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0760811   -0.4346116    0.1928475
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0%                   NA                -0.1116243   -0.5503657    0.2029567
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU         0%                   NA                 0.0304976   -0.8642767    0.4958179
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.1848375   -0.0500377    0.3671752
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.1451697   -0.1221362    0.3488003
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0925396   -0.2892673    0.0741697
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH   0%                   NA                 0.0457043   -0.1808896    0.2288184
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0150376   -0.8657846    0.4800306
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0604085   -0.7292670    0.3497440
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.5845252    0.0640759    0.8155627
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.3034166   -0.2702928    0.6180185
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.1723757   -0.4065203    0.5130095
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH   0%                   NA                 0.3517170   -0.2098491    0.6526254
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.2577792   -0.7821004    0.1122786
6-24 months                   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1899988   -0.6938419    0.1639733
6-24 months                   ki0047075b-MAL-ED       NEPAL        0%                   NA                -0.3871528   -0.9051231   -0.0100097
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.1083801   -0.1591443    0.3141614
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0624253   -0.2890869    0.3180861
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.1234435   -0.3405902    0.0585301
6-24 months                   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0643459   -0.3172089    0.1399753

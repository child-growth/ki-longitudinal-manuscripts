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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                 country                        perdiar6    ever_swasted   n_cell     n
----------------------------  ----------------------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       80   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1        5   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       93   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        5   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       78   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        2   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      212   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                     1        3   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                     0       55   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                     1        4   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      125   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        3   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                    0       56   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                    1        3   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                     0       81   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                     1        2   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       75   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        1   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       80   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                     0       88   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                     1        1   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       92   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        1   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                    0      119   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                    1        1   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      225   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        7   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       56   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        4   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0       10   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      111   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        2   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       99   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        3   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       45   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        1   261
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                     0       49   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                     1        8   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       57   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       14   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                    0      115   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                    1       30   273
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0      146   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       11   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      169   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       13   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      230   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       30   599
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      209   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1        4   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      249   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       10   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      210   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        5   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      352   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       12   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      170   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        3   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      212   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        5   754
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                     0       83   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                     1       10   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       52   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       10   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                    0       96   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                    1       17   268
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                     0       41   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                     1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       47   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                    0       31   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                    1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      262   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       19   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      246   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       14   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      352   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       19   912
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                     0      211   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                     1        1   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]               0      199   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]               1        1   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                    0      300   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                    1        5   717
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                     0      115   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                     1        0   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                    0       57   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                    1        0   215
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       81   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1        3   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       95   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        3   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       79   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        1   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      213   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                     1        2   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                     0       57   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                     1        2   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      126   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        1   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                    0       57   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                    1        2   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                     0       81   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                     1        0   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       75   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        1   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       80   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                     0       89   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                     1        0   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       93   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        0   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                    0      119   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                    1        1   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      229   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        2   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       59   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        1   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0       10   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      112   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        1   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      101   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        1   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       46   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        0   261
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                     0       54   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                     1        2   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       65   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        6   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                    0      130   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                    1       14   271
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      151   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1        1   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      172   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1        3   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      249   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1        5   581
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      210   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1        2   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      256   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1        2   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      211   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        2   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      361   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1        1   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      172   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        0   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      215   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        0   749
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                     0       92   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                     1        1   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       57   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1        4   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                    0      109   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                    1        4   267
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                     0       41   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                     1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       46   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                    0       30   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                    1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      249   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     1        0   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      241   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1        2   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      330   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1        3   825
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                     0      201   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                     1        0   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]               0      197   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]               1        1   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                    0      293   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                    1        3   695
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                     0      115   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                     1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                    0       57   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                    1        0   215
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       69   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                     1        2   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       90   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        2   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       76   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        1   240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                     0      188   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                     1        2   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   207
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                     0       48   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                     1        2   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      124   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        2   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                    0       58   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                    1        1   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                     0       78   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                     1        2   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       76   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        0   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                    0       79   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   235
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                     0       66   270
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                     1        1   270
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       86   270
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        1   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                    0      116   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                    1        0   270
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      188   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        6   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       53   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        3   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        9   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   259
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      103   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        1   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       94   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        2   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       44   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        1   245
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                     0       32   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                     1        6   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       54   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        9   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                    0      111   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                    1       18   230
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                     0      119   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       10   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      160   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       11   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      215   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       26   541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      159   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                     1        2   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      242   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1        8   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      201   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        3   615
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      334   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       11   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      166   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        4   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      210   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        5   730
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                     0       77   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                     1        9   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       52   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1        7   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                    0       94   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                    1       13   252
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                     0       41   119
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                     1        0   119
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       47   119
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        0   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                    0       31   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                    1        0   119
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      254   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       21   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      240   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       13   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      347   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       16   891
6-24 months                   ki1114097-CMIN          PERU                           0%                     0      198   666
6-24 months                   ki1114097-CMIN          PERU                           0%                     1        1   666
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]               0      192   666
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]               1        0   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                    0      272   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                    1        3   666
6-24 months                   ki1114097-CONTENT       PERU                           0%                     0      115   215
6-24 months                   ki1114097-CONTENT       PERU                           0%                     1        0   215
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                    0       57   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                    1        0   215


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/b5c455fb-d306-4048-92dd-c5fd90a26043/a47b7cce-0217-4553-9378-379e75349c9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5c455fb-d306-4048-92dd-c5fd90a26043/a47b7cce-0217-4553-9378-379e75349c9d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5c455fb-d306-4048-92dd-c5fd90a26043/a47b7cce-0217-4553-9378-379e75349c9d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5c455fb-d306-4048-92dd-c5fd90a26043/a47b7cce-0217-4553-9378-379e75349c9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        0%                   NA                0.1403509   0.0500118   0.2306900
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                0.1971831   0.1044662   0.2899000
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        >5%                  NA                0.2068966   0.1408420   0.2729511
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                0.0705581   0.0304940   0.1106222
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                0.0720165   0.0344184   0.1096146
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      >5%                  NA                0.1144574   0.0754278   0.1534871
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      0%                   NA                0.1175407   0.0512384   0.1838430
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                0.1621305   0.0714960   0.2527650
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      >5%                  NA                0.1487510   0.0830393   0.2144626
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                0.0681299   0.0385963   0.0976635
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                0.0541174   0.0266863   0.0815484
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   >5%                  NA                0.0513061   0.0288159   0.0737962
6-24 months                   ki1000109-ResPak      PAKISTAN        0%                   NA                0.1578947   0.0417045   0.2740849
6-24 months                   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                0.1428571   0.0562604   0.2294539
6-24 months                   ki1000109-ResPak      PAKISTAN        >5%                  NA                0.1395349   0.0796100   0.1994598
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                0.0776907   0.0307468   0.1246347
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                0.0623615   0.0255897   0.0991333
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      >5%                  NA                0.1087117   0.0692774   0.1481461
6-24 months                   ki1114097-CMIN        BANGLADESH      0%                   NA                0.1046512   0.0398280   0.1694744
6-24 months                   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                0.1186441   0.0359672   0.2013210
6-24 months                   ki1114097-CMIN        BANGLADESH      >5%                  NA                0.1214953   0.0594697   0.1835210
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                0.0787275   0.0471043   0.1103506
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                0.0531256   0.0260842   0.0801669
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   >5%                  NA                0.0453477   0.0242099   0.0664856


### Parameter: E(Y)


agecat                        studyid               country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        NA                   NA                0.1904762   0.1438104   0.2371420
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      NA                   NA                0.0901503   0.0671959   0.1131046
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      NA                   NA                0.1380597   0.0966822   0.1794372
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                0.0570175   0.0419603   0.0720748
6-24 months                   ki1000109-ResPak      PAKISTAN        NA                   NA                0.1434783   0.0980744   0.1888821
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months                   ki1114097-CMIN        BANGLADESH      NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                0.0561167   0.0409965   0.0712370


### Parameter: RR


agecat                        studyid               country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        (0%, 5%]             0%                1.4049296   0.6330961   3.117737
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        >5%                  0%                1.4741379   0.7186206   3.023963
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             0%                1.0206693   0.4719986   2.207137
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      >5%                  0%                1.6221721   0.8366300   3.145288
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      (0%, 5%]             0%                1.3793566   0.6226179   3.055846
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      >5%                  0%                1.2655275   0.6172776   2.594553
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             0%                0.7943260   0.4076025   1.547963
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   >5%                  0%                0.7530623   0.4065696   1.394848
6-24 months                   ki1000109-ResPak      PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-ResPak      PAKISTAN        (0%, 5%]             0%                0.9047619   0.3487235   2.347402
6-24 months                   ki1000109-ResPak      PAKISTAN        >5%                  0%                0.8837209   0.3769520   2.071783
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             0%                0.8026890   0.3450854   1.867102
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      >5%                  0%                1.3992881   0.6912779   2.832446
6-24 months                   ki1114097-CMIN        BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN        BANGLADESH      (0%, 5%]             0%                1.1337100   0.4462586   2.880165
6-24 months                   ki1114097-CMIN        BANGLADESH      >5%                  0%                1.1609553   0.5202490   2.590716
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             0%                0.6748035   0.3528425   1.290547
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   >5%                  0%                0.5760093   0.3113568   1.065616


### Parameter: PAR


agecat                        studyid               country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        0%                   NA                 0.0501253   -0.0331267   0.1333773
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                 0.0195921   -0.0163645   0.0555488
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      0%                   NA                 0.0205190   -0.0363531   0.0773912
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                -0.0111124   -0.0348739   0.0126492
6-24 months                   ki1000109-ResPak      PAKISTAN        0%                   NA                -0.0144165   -0.1197766   0.0909436
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                 0.0091854   -0.0324808   0.0508516
6-24 months                   ki1114097-CMIN        BANGLADESH      0%                   NA                 0.0104282   -0.0433542   0.0642106
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                -0.0226107   -0.0474384   0.0022170


### Parameter: PAF


agecat                        studyid               country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        0%                   NA                 0.2631579   -0.3278460    0.5911150
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                 0.2173274   -0.2972611    0.5277925
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      0%                   NA                 0.1486243   -0.3766409    0.4734716
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                -0.1948938   -0.6897963    0.1550631
6-24 months                   ki1000109-ResPak      PAKISTAN        0%                   NA                -0.1004785   -1.1439085    0.4351191
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                 0.1057300   -0.5279950    0.4766221
6-24 months                   ki1114097-CMIN        BANGLADESH      0%                   NA                 0.0906175   -0.5190155    0.4555838
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                -0.4029233   -0.9105149   -0.0301902

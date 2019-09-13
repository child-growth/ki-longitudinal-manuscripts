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

**Outcome Variable:** swasted

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

agecat      studyid                 country                        perdiar6    swasted   n_cell     n
----------  ----------------------  -----------------------------  ---------  --------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                0       78   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                1        1   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       88   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        4   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               0       67   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               1        3   241
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                0      169   183
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                1        0   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       12   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   183
Birth       ki0047075b-MAL-ED       INDIA                          0%                0       44   203
Birth       ki0047075b-MAL-ED       INDIA                          0%                1        2   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      104   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        3   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%               0       48   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%               1        2   203
Birth       ki0047075b-MAL-ED       NEPAL                          0%                0       53   168
Birth       ki0047075b-MAL-ED       NEPAL                          0%                1        3   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       56   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        1   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               0       55   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               1        0   168
Birth       ki0047075b-MAL-ED       PERU                           0%                0       82   279
Birth       ki0047075b-MAL-ED       PERU                           0%                1        0   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       84   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        0   279
Birth       ki0047075b-MAL-ED       PERU                           >5%               0      113   279
Birth       ki0047075b-MAL-ED       PERU                           >5%               1        0   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      191   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        1   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       49   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        0   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       39   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        1   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       19   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   118
Birth       ki1000109-ResPak        PAKISTAN                       0%                0        0     5
Birth       ki1000109-ResPak        PAKISTAN                       0%                1        0     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0        2     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        0     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%               0        3     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%               1        0     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                0        4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0        2    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        1    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               0       18    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               1        1    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                0        6    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        0    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0        7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0        9    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        1    23
Birth       ki1114097-CMIN          BANGLADESH                     0%                0        5     8
Birth       ki1114097-CMIN          BANGLADESH                     0%                1        1     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0        0     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%               0        2     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%               1        0     8
Birth       ki1114097-CMIN          BRAZIL                         0%                0       35   111
Birth       ki1114097-CMIN          BRAZIL                         0%                1        1   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        0   111
Birth       ki1114097-CMIN          BRAZIL                         >5%               0       29   111
Birth       ki1114097-CMIN          BRAZIL                         >5%               1        0   111
Birth       ki1114097-CMIN          PERU                           0%                0        4    10
Birth       ki1114097-CMIN          PERU                           0%                1        0    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]          0        5    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]          1        0    10
Birth       ki1114097-CMIN          PERU                           >5%               0        1    10
Birth       ki1114097-CMIN          PERU                           >5%               1        0    10
Birth       ki1114097-CONTENT       PERU                           0%                0        0     2
Birth       ki1114097-CONTENT       PERU                           0%                1        0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%               0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%               1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       71   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       90   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        2   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       78   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1        0   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          0%                0       49   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                1        1   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      125   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        2   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       57   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               1        2   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       80   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        0   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       76   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        0   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       80   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        0   236
6 months    ki0047075b-MAL-ED       PERU                           0%                0       68   273
6 months    ki0047075b-MAL-ED       PERU                           0%                1        0   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       89   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        0   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               0      116   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               1        0   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      188   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        2   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       54   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        1   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      105   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   247
6 months    ki1000109-ResPak        PAKISTAN                       0%                0       40   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                1        1   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       60   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        4   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               0      126   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               1        4   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0      127   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1        2   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      167   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        1   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      237   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1        2   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      155   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1        2   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      241   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        1   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      181   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1        2   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      341   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        0   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      207   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        0   715
6 months    ki1114097-CMIN          BANGLADESH                     0%                0       81   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                1        0   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       56   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        2   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               0      101   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               1        3   243
6 months    ki1114097-CMIN          BRAZIL                         0%                0       38   108
6 months    ki1114097-CMIN          BRAZIL                         0%                1        0   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       41   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        0   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               0       29   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               1        0   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                0      209   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                1        3   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      186   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1        3   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      267   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               1        4   672
6 months    ki1114097-CMIN          PERU                           0%                0      184   634
6 months    ki1114097-CMIN          PERU                           0%                1        0   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          0      182   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          1        2   634
6 months    ki1114097-CMIN          PERU                           >5%               0      265   634
6 months    ki1114097-CMIN          PERU                           >5%               1        1   634
6 months    ki1114097-CONTENT       PERU                           0%                0      115   215
6 months    ki1114097-CONTENT       PERU                           0%                1        0   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       43   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   215
6 months    ki1114097-CONTENT       PERU                           >5%               0       57   215
6 months    ki1114097-CONTENT       PERU                           >5%               1        0   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       64   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        0   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       65   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        0   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      153   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        1   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          0%                0       47   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                1        1   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      122   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        0   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       56   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               1        1   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       77   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                1        0   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       75   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        0   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       76   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        0   228
24 months   ki0047075b-MAL-ED       PERU                           0%                0       52   201
24 months   ki0047075b-MAL-ED       PERU                           0%                1        1   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       64   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        0   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               0       84   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               1        0   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      177   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        0   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        0   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        0   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       83   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      104   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1        3   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      124   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        3   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      190   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1        4   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      151   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1        1   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      227   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        5   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      191   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1        3   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      274   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        3   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      106   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      130   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        1   514
24 months   ki1114097-CMIN          BANGLADESH                     0%                0       84   243
24 months   ki1114097-CMIN          BANGLADESH                     0%                1        1   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       58   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       99   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%               1        1   243
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0       97   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1        2   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0       76   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1        1   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      103   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1        0   279
24 months   ki1114097-CMIN          PERU                           0%                0       97   244
24 months   ki1114097-CMIN          PERU                           0%                1        0   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0       79   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1        0   244
24 months   ki1114097-CMIN          PERU                           >5%               0       68   244
24 months   ki1114097-CMIN          PERU                           >5%               1        0   244
24 months   ki1114097-CONTENT       PERU                           0%                0       84   164
24 months   ki1114097-CONTENT       PERU                           0%                1        0   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       36   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   164
24 months   ki1114097-CONTENT       PERU                           >5%               0       44   164
24 months   ki1114097-CONTENT       PERU                           >5%               1        0   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED

















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

**Outcome Variable:** wasted

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

agecat      studyid                 country                        perdiar6    wasted   n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%               0       68   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%               1       11   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         0       75   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         1       17   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%              0       58   241
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%              1       12   241
Birth       ki0047075b-MAL-ED       BRAZIL                         0%               0      164   183
Birth       ki0047075b-MAL-ED       BRAZIL                         0%               1        5   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         0       11   183
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         1        1   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              0        2   183
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              1        0   183
Birth       ki0047075b-MAL-ED       INDIA                          0%               0       39   203
Birth       ki0047075b-MAL-ED       INDIA                          0%               1        7   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]         0       91   203
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]         1       16   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%              0       40   203
Birth       ki0047075b-MAL-ED       INDIA                          >5%              1       10   203
Birth       ki0047075b-MAL-ED       NEPAL                          0%               0       48   168
Birth       ki0047075b-MAL-ED       NEPAL                          0%               1        8   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         0       51   168
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         1        6   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              0       49   168
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              1        6   168
Birth       ki0047075b-MAL-ED       PERU                           0%               0       82   279
Birth       ki0047075b-MAL-ED       PERU                           0%               1        0   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]         0       83   279
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]         1        1   279
Birth       ki0047075b-MAL-ED       PERU                           >5%              0      108   279
Birth       ki0047075b-MAL-ED       PERU                           >5%              1        5   279
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%               0      181   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%               1       11   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       46   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        3   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              0        7   250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              1        2   250
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0       59   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        0   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       38   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        2   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       19   118
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        0   118
Birth       ki1000109-ResPak        PAKISTAN                       0%               0        0     5
Birth       ki1000109-ResPak        PAKISTAN                       0%               1        0     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         0        2     5
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]         1        0     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              0        3     5
Birth       ki1000109-ResPak        PAKISTAN                       >5%              1        0     5
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               0        3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               1        1    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         0        2    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         1        1    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%              0       14    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%              1        5    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               0        4    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               1        2    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         0        7    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         1        0    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%              0        9    23
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%              1        1    23
Birth       ki1114097-CMIN          BANGLADESH                     0%               0        4     8
Birth       ki1114097-CMIN          BANGLADESH                     0%               1        2     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0        0     8
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         1        0     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              0        1     8
Birth       ki1114097-CMIN          BANGLADESH                     >5%              1        1     8
Birth       ki1114097-CMIN          BRAZIL                         0%               0       32   111
Birth       ki1114097-CMIN          BRAZIL                         0%               1        4   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]         0       45   111
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]         1        1   111
Birth       ki1114097-CMIN          BRAZIL                         >5%              0       26   111
Birth       ki1114097-CMIN          BRAZIL                         >5%              1        3   111
Birth       ki1114097-CMIN          PERU                           0%               0        4    10
Birth       ki1114097-CMIN          PERU                           0%               1        0    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         0        5    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]         1        0    10
Birth       ki1114097-CMIN          PERU                           >5%              0        1    10
Birth       ki1114097-CMIN          PERU                           >5%              1        0    10
Birth       ki1114097-CONTENT       PERU                           0%               0        0     2
Birth       ki1114097-CONTENT       PERU                           0%               1        0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]         1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%              0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%              1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%               0       69   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%               1        2   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         0       88   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         1        4   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%              0       76   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%              1        2   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%               0      191   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%               1        1   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         0       15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%              1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          0%               0       47   236
6 months    ki0047075b-MAL-ED       INDIA                          0%               1        3   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]         0      117   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]         1       10   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%              0       54   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%              1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%               0       76   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%               1        4   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         0       76   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         1        0   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%              0       80   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%              1        0   236
6 months    ki0047075b-MAL-ED       PERU                           0%               0       68   273
6 months    ki0047075b-MAL-ED       PERU                           0%               1        0   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]         0       89   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]         1        0   273
6 months    ki0047075b-MAL-ED       PERU                           >5%              0      116   273
6 months    ki0047075b-MAL-ED       PERU                           >5%              1        0   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%               0      185   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%               1        5   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       53   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        2   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              0        9   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              1        0   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0      104   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        1   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       96   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        0   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       46   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        0   247
6 months    ki1000109-ResPak        PAKISTAN                       0%               0       32   235
6 months    ki1000109-ResPak        PAKISTAN                       0%               1        9   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]         0       55   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]         1        9   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%              0      122   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%              1        8   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%               0      124   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%               1        5   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         0      159   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         1        9   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%              0      219   536
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%              1       20   536
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%               0      151   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%               1        6   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         0      232   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         1       10   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%              0      175   582
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%              1        8   582
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%               0      333   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%               1        8   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         0      163   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         1        4   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%              0      198   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%              1        9   715
6 months    ki1114097-CMIN          BANGLADESH                     0%               0       77   243
6 months    ki1114097-CMIN          BANGLADESH                     0%               1        4   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0       52   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]         1        6   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%              0       93   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%              1       11   243
6 months    ki1114097-CMIN          BRAZIL                         0%               0       38   108
6 months    ki1114097-CMIN          BRAZIL                         0%               1        0   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]         0       40   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]         1        1   108
6 months    ki1114097-CMIN          BRAZIL                         >5%              0       29   108
6 months    ki1114097-CMIN          BRAZIL                         >5%              1        0   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%               0      202   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%               1       10   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]         0      182   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]         1        7   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%              0      259   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%              1       12   672
6 months    ki1114097-CMIN          PERU                           0%               0      183   634
6 months    ki1114097-CMIN          PERU                           0%               1        1   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]         0      181   634
6 months    ki1114097-CMIN          PERU                           (0%, 5%]         1        3   634
6 months    ki1114097-CMIN          PERU                           >5%              0      260   634
6 months    ki1114097-CMIN          PERU                           >5%              1        6   634
6 months    ki1114097-CONTENT       PERU                           0%               0      115   215
6 months    ki1114097-CONTENT       PERU                           0%               1        0   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]         0       43   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]         1        0   215
6 months    ki1114097-CONTENT       PERU                           >5%              0       57   215
6 months    ki1114097-CONTENT       PERU                           >5%              1        0   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%               0       57   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%               1        7   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         0       74   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         1        9   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%              0       60   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%              1        5   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%               0      151   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%               1        3   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%              1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          0%               0       43   227
24 months   ki0047075b-MAL-ED       INDIA                          0%               1        5   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]         0      109   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]         1       13   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%              0       48   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%              1        9   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%               0       74   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%               1        3   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         0       73   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         1        2   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%              0       76   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%              1        0   228
24 months   ki0047075b-MAL-ED       PERU                           0%               0       51   201
24 months   ki0047075b-MAL-ED       PERU                           0%               1        2   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]         0       64   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]         1        0   201
24 months   ki0047075b-MAL-ED       PERU                           >5%              0       83   201
24 months   ki0047075b-MAL-ED       PERU                           >5%              1        1   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%               0      176   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%               1        1   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       52   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        0   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              0        9   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              1        0   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0       90   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        2   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       82   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        1   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       38   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        1   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%               0       93   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%               1       14   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         0      114   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         1       13   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%              0      168   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%              1       26   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%               0      136   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%               1       16   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         0      204   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         1       28   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%              0      173   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%              1       21   578
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%               0      254   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%               1       23   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         0       94   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         1       12   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%              0      121   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%              1       10   514
24 months   ki1114097-CMIN          BANGLADESH                     0%               0       75   243
24 months   ki1114097-CMIN          BANGLADESH                     0%               1       10   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0       54   243
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]         1        4   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%              0       89   243
24 months   ki1114097-CMIN          BANGLADESH                     >5%              1       11   243
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%               0       93   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%               1        6   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]         0       71   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]         1        6   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%              0      100   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%              1        3   279
24 months   ki1114097-CMIN          PERU                           0%               0       96   244
24 months   ki1114097-CMIN          PERU                           0%               1        1   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]         0       79   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]         1        0   244
24 months   ki1114097-CMIN          PERU                           >5%              0       68   244
24 months   ki1114097-CMIN          PERU                           >5%              1        0   244
24 months   ki1114097-CONTENT       PERU                           0%               0       84   164
24 months   ki1114097-CONTENT       PERU                           0%               1        0   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         0       36   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]         1        0   164
24 months   ki1114097-CONTENT       PERU                           >5%              0       44   164
24 months   ki1114097-CONTENT       PERU                           >5%              1        0   164


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/7d7822ba-c547-4484-89f3-d99765e6e649/63416179-d548-4afd-85d5-3e213dab0562/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d7822ba-c547-4484-89f3-d99765e6e649/63416179-d548-4afd-85d5-3e213dab0562/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d7822ba-c547-4484-89f3-d99765e6e649/63416179-d548-4afd-85d5-3e213dab0562/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d7822ba-c547-4484-89f3-d99765e6e649/63416179-d548-4afd-85d5-3e213dab0562/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.1418963   0.0641254   0.2196672
Birth       ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1827417   0.1034945   0.2619888
Birth       ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1736347   0.0833669   0.2639024
Birth       ki0047075b-MAL-ED       INDIA           0%                   NA                0.1521739   0.0481184   0.2562294
Birth       ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1495327   0.0817958   0.2172696
Birth       ki0047075b-MAL-ED       INDIA           >5%                  NA                0.2000000   0.0888536   0.3111464
Birth       ki0047075b-MAL-ED       NEPAL           0%                   NA                0.1428571   0.0509333   0.2347810
Birth       ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.1052632   0.0253547   0.1851716
Birth       ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1090909   0.0264540   0.1917278
6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                0.2195122   0.0925441   0.3464803
6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.1406250   0.0552744   0.2259756
6 months    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.0615385   0.0201400   0.1029369
6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.0387597   0.0054198   0.0720996
6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.0535714   0.0194907   0.0876522
6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.0836820   0.0485427   0.1188214
6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0382166   0.0082017   0.0682314
6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.0413223   0.0162241   0.0664205
6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.0437158   0.0140669   0.0733648
6 months    ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.0471698   0.0186108   0.0757288
6 months    ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.0370370   0.0100929   0.0639811
6 months    ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.0442804   0.0197696   0.0687913
24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.1093750   0.0327287   0.1860213
24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1084337   0.0413844   0.1754831
24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0769231   0.0119901   0.1418561
24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.1041667   0.0175574   0.1907759
24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1065574   0.0516852   0.1614295
24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.1578947   0.0630231   0.2527664
24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.1324568   0.0681248   0.1967888
24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1046517   0.0504389   0.1588645
24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.1317595   0.0842391   0.1792800
24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1056301   0.0564659   0.1547943
24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.1208514   0.0788547   0.1628482
24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1087122   0.0647489   0.1526755
24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0840061   0.0514825   0.1165297
24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1162551   0.0550055   0.1775046
24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0793337   0.0344741   0.1241933


### Parameter: E(Y)


agecat      studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki0047075b-MAL-ED       INDIA           NA                   NA                0.1625616   0.1116803   0.2134428
Birth       ki0047075b-MAL-ED       NEPAL           NA                   NA                0.1190476   0.0699312   0.1681640
6 months    ki1000109-ResPak        PAKISTAN        NA                   NA                0.1106383   0.0704470   0.1508296
6 months    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.0431548   0.0277795   0.0585300
24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0875486   0.0630907   0.1120065


### Parameter: RR


agecat      studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                1.2878535   0.6399934   2.5915373
Birth       ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                1.2236729   0.5747231   2.6053861
Birth       ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.9826435   0.4326887   2.2316003
Birth       ki0047075b-MAL-ED       INDIA           >5%                  0%                1.3142857   0.5445210   3.1722317
Birth       ki0047075b-MAL-ED       NEPAL           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       NEPAL           (0%, 5%]             0%                0.7368421   0.2723862   1.9932590
Birth       ki0047075b-MAL-ED       NEPAL           >5%                  0%                0.7636364   0.2826413   2.0631824
6 months    ki1000109-ResPak        PAKISTAN        0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             0%                0.6406250   0.2770046   1.4815655
6 months    ki1000109-ResPak        PAKISTAN        >5%                  0%                0.2803419   0.1154473   0.6807573
6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.3821426   0.4741507   4.0289261
6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                2.1589953   0.8289861   5.6228454
6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.0812672   0.4006323   2.9182340
6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1438980   0.4052481   3.2288928
6 months    ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                0.7851852   0.3047359   2.0231153
6 months    ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.9387454   0.4133086   2.1321668
24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.9913941   0.3893743   2.5242096
24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.7032967   0.2347872   2.1067003
24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                1.0229508   0.3846933   2.7201625
24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                1.5157895   0.5434074   4.2281676
24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                0.7900819   0.3887356   1.6057942
24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                0.9947358   0.5426425   1.8234831
24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.1441004   0.6399133   2.0455360
24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.0291783   0.5555270   1.9066725
24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                1.3838883   0.7198497   2.6604813
24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.9443798   0.4755107   1.8755688


### Parameter: PAR


agecat      studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.0240788   -0.0421603   0.0903179
Birth       ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0103877   -0.0818586   0.1026340
Birth       ki0047075b-MAL-ED       NEPAL           0%                   NA                -0.0238095   -0.0961219   0.0485029
6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                -0.1088739   -0.2189242   0.0011764
6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0246731   -0.0069984   0.0563447
6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0030206   -0.0229843   0.0290254
6 months    ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0040150   -0.0271969   0.0191668
24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0103184   -0.0731871   0.0525503
24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0147761   -0.0633913   0.0929434
24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                -0.0086250   -0.0639629   0.0467129
24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0068266   -0.0358450   0.0494983
24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                 0.0035425   -0.0192023   0.0262873


### Parameter: PAF


agecat      studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH      0%                   NA                 0.1450748   -0.3610636    0.4629957
Birth       ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0638999   -0.7158653    0.4893052
Birth       ki0047075b-MAL-ED       NEPAL           0%                   NA                -0.2000000   -0.9844517    0.2743588
6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                -0.9840525   -2.2213831   -0.2219796
6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.3889648   -0.3499240    0.7234185
6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0732484   -0.8289473    0.5304028
6 months    ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0930384   -0.7852764    0.3307855
24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.1041667   -0.9599502    0.3779515
24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                 0.1242284   -0.8523711    0.5859491
24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                -0.0696511   -0.6241098    0.2955196
24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0607046   -0.4065765    0.3727495
24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                 0.0404635   -0.2574572    0.2677999

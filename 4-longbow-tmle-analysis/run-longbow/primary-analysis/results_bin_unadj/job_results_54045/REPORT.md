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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        perdiar6    wasted   n_cell     n
----------  ----------------------  -----------------------------  ---------  -------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%               0       55   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%               1       10   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         0       69   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]         1       17   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%              0       55   215
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%              1        9   215
Birth       ki0047075b-MAL-ED       BRAZIL                         0%               0       53    62
Birth       ki0047075b-MAL-ED       BRAZIL                         0%               1        1    62
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         0        5    62
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]         1        1    62
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              0        2    62
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%              1        0    62
Birth       ki0047075b-MAL-ED       INDIA                          0%               0       10    45
Birth       ki0047075b-MAL-ED       INDIA                          0%               1        1    45
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]         0       20    45
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]         1        3    45
Birth       ki0047075b-MAL-ED       INDIA                          >5%              0       10    45
Birth       ki0047075b-MAL-ED       INDIA                          >5%              1        1    45
Birth       ki0047075b-MAL-ED       NEPAL                          0%               0        8    26
Birth       ki0047075b-MAL-ED       NEPAL                          0%               1        0    26
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         0        9    26
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]         1        1    26
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              0        7    26
Birth       ki0047075b-MAL-ED       NEPAL                          >5%              1        1    26
Birth       ki0047075b-MAL-ED       PERU                           0%               0       67   228
Birth       ki0047075b-MAL-ED       PERU                           0%               1        0   228
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]         0       69   228
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]         1        0   228
Birth       ki0047075b-MAL-ED       PERU                           >5%              0       87   228
Birth       ki0047075b-MAL-ED       PERU                           >5%              1        5   228
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%               0       77   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%               1        8   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         0       22   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]         1        1   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              0        3   112
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%              1        1   112
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               0       51   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%               1        0   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         0       43   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]         1        1   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              0       20   115
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%              1        0   115
Birth       ki1000109-EE            PAKISTAN                       0%               0      143   177
Birth       ki1000109-EE            PAKISTAN                       0%               1       21   177
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]         0       10   177
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]         1        1   177
Birth       ki1000109-EE            PAKISTAN                       >5%              0        2   177
Birth       ki1000109-EE            PAKISTAN                       >5%              1        0   177
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               0      107   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%               1       43   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         0      127   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         1       44   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%              0      170   572
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%              1       81   572
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%               0      126   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%               1       34   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         0      162   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         1       44   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%              0      127   532
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%              1       39   532
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               0      255   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%               1       90   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         0      120   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]         1       40   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%              0      160   707
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%              1       42   707
Birth       ki1114097-CMIN          BANGLADESH                     0%               0        7    19
Birth       ki1114097-CMIN          BANGLADESH                     0%               1        3    19
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         0        3    19
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]         1        0    19
Birth       ki1114097-CMIN          BANGLADESH                     >5%              0        5    19
Birth       ki1114097-CMIN          BANGLADESH                     >5%              1        1    19
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
6 months    ki0047075b-MAL-ED       INDIA                          0%               0       46   236
6 months    ki0047075b-MAL-ED       INDIA                          0%               1        4   236
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
6 months    ki1000109-EE            PAKISTAN                       0%               0      293   375
6 months    ki1000109-EE            PAKISTAN                       0%               1       45   375
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]         0       33   375
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]         1        2   375
6 months    ki1000109-EE            PAKISTAN                       >5%              0        2   375
6 months    ki1000109-EE            PAKISTAN                       >5%              1        0   375
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%               0      124   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%               1        5   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         0      159   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         1       10   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%              0      219   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%              1       20   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%               0      151   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%               1        6   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         0      236   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         1       10   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%              0      191   603
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%              1        9   603
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
24 months   ki0047075b-MAL-ED       PERU                           0%               0       50   201
24 months   ki0047075b-MAL-ED       PERU                           0%               1        3   201
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
24 months   ki1000109-EE            PAKISTAN                       0%               0      127   168
24 months   ki1000109-EE            PAKISTAN                       0%               1       26   168
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         0       10   168
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]         1        4   168
24 months   ki1000109-EE            PAKISTAN                       >5%              0        1   168
24 months   ki1000109-EE            PAKISTAN                       >5%              1        0   168
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%               0       93   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%               1       14   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         0      114   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]         1       13   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%              0      168   428
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%              1       26   428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%               0      139   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%               1       14   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         0      204   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]         1       28   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%              0      174   579
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%              1       20   579
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d65c4dc2-212b-4050-8f40-6fa548096b44/5f2d1f1e-ecec-47ee-bdd9-c5f0c11817db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d65c4dc2-212b-4050-8f40-6fa548096b44/5f2d1f1e-ecec-47ee-bdd9-c5f0c11817db/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d65c4dc2-212b-4050-8f40-6fa548096b44/5f2d1f1e-ecec-47ee-bdd9-c5f0c11817db/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d65c4dc2-212b-4050-8f40-6fa548096b44/5f2d1f1e-ecec-47ee-bdd9-c5f0c11817db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.1538462   0.0659294   0.2417629
Birth       ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1976744   0.1133095   0.2820393
Birth       ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.1406250   0.0552574   0.2259926
Birth       ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2866667   0.2142369   0.3590965
Birth       ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.2573099   0.1917314   0.3228885
Birth       ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.3227092   0.2648217   0.3805966
Birth       ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.2125000   0.1490544   0.2759456
Birth       ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2135922   0.1575727   0.2696118
Birth       ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.2349398   0.1703849   0.2994946
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.2608696   0.2145016   0.3072375
Birth       ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.2500000   0.1828577   0.3171423
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.2079208   0.1519176   0.2639240
6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0387597   0.0054198   0.0720996
6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0591716   0.0235657   0.0947774
6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0836820   0.0485427   0.1188213
6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0382166   0.0082026   0.0682305
6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0406504   0.0159524   0.0653484
6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.0450000   0.0162458   0.0737542
24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.1093750   0.0327287   0.1860213
24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1084337   0.0413844   0.1754831
24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.0769231   0.0119901   0.1418561
24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.1041667   0.0175574   0.1907759
24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1065574   0.0516852   0.1614295
24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.1578947   0.0630231   0.2527664
24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.1308411   0.0668697   0.1948125
24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1023622   0.0495816   0.1551428
24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.1340206   0.0860258   0.1820155
24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0915033   0.0457779   0.1372287
24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1206897   0.0787345   0.1626448
24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1030928   0.0602665   0.1459191
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0830325   0.0505064   0.1155586
24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1132075   0.0528312   0.1735839
24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0763359   0.0308207   0.1218511


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1674419   0.1174176   0.2174661
Birth       ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2937063   0.2563487   0.3310639
Birth       ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                1.2848837   0.6296616   2.621926
Birth       ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.9140625   0.3970972   2.104045
Birth       ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.8975928   0.6269327   1.285103
Birth       ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.1257296   0.8257760   1.534638
Birth       ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0051399   0.6755169   1.495605
Birth       ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1055989   0.7368478   1.658889
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9583333   0.6944612   1.322468
Birth       ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.7970297   0.5771961   1.100590
6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.5266269   0.5343567   4.361487
6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                2.1589953   0.8289875   5.622836
6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0636856   0.3940784   2.871071
6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1775000   0.4278096   3.240942
24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.9913941   0.3893743   2.524210
24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.7032967   0.2347872   2.106700
24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                1.0229508   0.3846933   2.720162
24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                1.5157895   0.5434074   4.228168
24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.7823397   0.3844116   1.592188
24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.0243004   0.5587586   1.877719
24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3189654   0.7175676   2.424398
24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1266568   0.5882645   2.157797
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.3634126   0.7034643   2.642485
24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.9193495   0.4504510   1.876349


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0135957   -0.0609577   0.0881492
Birth       ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0070396   -0.0553321   0.0694113
Birth       ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0074248   -0.0459156   0.0607652
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0175881   -0.0500441   0.0148679
6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0264172   -0.0054290   0.0582634
6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0032428   -0.0229361   0.0294217
24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0103184   -0.0731871   0.0525503
24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                 0.0147761   -0.0633913   0.0929434
24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                -0.0070093   -0.0619844   0.0479657
24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0155779   -0.0246874   0.0558432
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0045161   -0.0181964   0.0272286


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   0%                   NA                 0.0811966   -0.4910205   0.4338108
Birth       ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0239683   -0.2132605   0.2148117
Birth       ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0337607   -0.2418989   0.2482331
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0722952   -0.2142420   0.0530577
6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.4053155   -0.3162825   0.7313269
6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0782166   -0.8273298   0.5350129
24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.1041667   -0.9599502   0.3779515
24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                 0.1242284   -0.8523711   0.5859491
24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                -0.0566038   -0.6081327   0.3057715
24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.1454775   -0.3249516   0.4488790
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0515844   -0.2463628   0.2783064

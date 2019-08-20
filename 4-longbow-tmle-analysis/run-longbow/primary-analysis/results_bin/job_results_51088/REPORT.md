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

**Outcome Variable:** stunted

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

agecat      studyid                 country                        perdiar6    stunted   n_cell     n
----------  ----------------------  -----------------------------  ---------  --------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                0       71   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       13   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               0       56   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               1       19   257
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                0      156   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                1       20   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       12   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   191
Birth       ki0047075b-MAL-ED       INDIA                          0%                0       37   206
Birth       ki0047075b-MAL-ED       INDIA                          0%                1       10   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       90   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       19   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%               0       46   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%               1        4   206
Birth       ki0047075b-MAL-ED       NEPAL                          0%                0       55   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%                1        5   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       53   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        4   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               0       47   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               1        9   173
Birth       ki0047075b-MAL-ED       PERU                           0%                0       71   287
Birth       ki0047075b-MAL-ED       PERU                           0%                1       12   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       76   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       12   287
Birth       ki0047075b-MAL-ED       PERU                           >5%               0      106   287
Birth       ki0047075b-MAL-ED       PERU                           >5%               1       10   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      173   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       20   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       44   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       49   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       11   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       38   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        4   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       18   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        3   123
Birth       ki1000109-ResPak        PAKISTAN                       0%                0        0     6
Birth       ki1000109-ResPak        PAKISTAN                       0%                1        1     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        0     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%               0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%               1        1     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                0        4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0        3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               0       18    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               1        1    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                0        6    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        2    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0        7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0        9    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        3    27
Birth       ki1114097-CMIN          BANGLADESH                     0%                0        6    13
Birth       ki1114097-CMIN          BANGLADESH                     0%                1        5    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0        0    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%               0        1    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%               1        1    13
Birth       ki1114097-CMIN          BRAZIL                         0%                0       36   115
Birth       ki1114097-CMIN          BRAZIL                         0%                1        2   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   115
Birth       ki1114097-CMIN          BRAZIL                         >5%               0       28   115
Birth       ki1114097-CMIN          BRAZIL                         >5%               1        2   115
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
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       57   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1       14   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       79   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       13   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       60   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1       18   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      187   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        5   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       14   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          0%                0       41   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                1        9   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      107   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       20   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       42   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               1       17   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       75   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       71   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       78   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        2   236
6 months    ki0047075b-MAL-ED       PERU                           0%                0       51   273
6 months    ki0047075b-MAL-ED       PERU                           0%                1       17   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       67   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       22   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               0       95   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               1       21   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      155   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       35   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       42   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       13   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        7   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        2   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       73   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       32   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       77   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       19   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        7   247
6 months    ki1000109-ResPak        PAKISTAN                       0%                0       27   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                1       14   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       43   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1       21   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               0       82   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               1       48   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0       98   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      123   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       46   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      172   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       67   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      137   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      202   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       40   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      150   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       33   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      279   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       62   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      119   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       48   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       40   715
6 months    ki1114097-CMIN          BANGLADESH                     0%                0       55   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                1       26   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       30   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       29   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               0       65   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               1       38   243
6 months    ki1114097-CMIN          BRAZIL                         0%                0       38   108
6 months    ki1114097-CMIN          BRAZIL                         0%                1        0   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        3   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               0       22   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               1        7   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                0      192   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                1       20   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      175   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       15   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      244   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       26   672
6 months    ki1114097-CMIN          PERU                           0%                0      176   635
6 months    ki1114097-CMIN          PERU                           0%                1        8   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          0      170   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          1       14   635
6 months    ki1114097-CMIN          PERU                           >5%               0      246   635
6 months    ki1114097-CMIN          PERU                           >5%               1       21   635
6 months    ki1114097-CONTENT       PERU                           0%                0      101   215
6 months    ki1114097-CONTENT       PERU                           0%                1       14   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       40   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        3   215
6 months    ki1114097-CONTENT       PERU                           >5%               0       55   215
6 months    ki1114097-CONTENT       PERU                           >5%               1        2   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       34   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       30   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       47   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       36   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       33   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1       32   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      148   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        6   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          0%                0       26   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                1       22   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       70   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       52   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       36   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       21   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       60   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       17   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       63   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1       12   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       56   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1       20   228
24 months   ki0047075b-MAL-ED       PERU                           0%                0       29   201
24 months   ki0047075b-MAL-ED       PERU                           0%                1       24   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       36   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       28   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               0       62   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               1       22   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      117   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       60   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       31   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       21   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        6   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        3   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       26   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       66   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       25   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       58   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       10   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1       29   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0       50   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       57   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0       67   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       61   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0       74   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1      120   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      106   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       45   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      152   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       80   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      129   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       65   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      211   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       66   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0       73   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       33   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0       98   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       33   514
24 months   ki1114097-CMIN          BANGLADESH                     0%                0       35   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                1       50   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       14   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       44   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       28   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       71   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0       69   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       30   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0       58   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       19   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0       58   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       45   279
24 months   ki1114097-CMIN          PERU                           0%                0       74   244
24 months   ki1114097-CMIN          PERU                           0%                1       23   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0       56   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1       23   244
24 months   ki1114097-CMIN          PERU                           >5%               0       47   244
24 months   ki1114097-CMIN          PERU                           >5%               1       21   244
24 months   ki1114097-CONTENT       PERU                           0%                0       69   164
24 months   ki1114097-CONTENT       PERU                           0%                1       15   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       34   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        2   164
24 months   ki1114097-CONTENT       PERU                           >5%               0       40   164
24 months   ki1114097-CONTENT       PERU                           >5%               1        4   164


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/8982595b-17fb-4d4f-92f6-4a5540efe1ad/98d8013d-cfe0-41be-8b1f-b2b1548d55cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8982595b-17fb-4d4f-92f6-4a5540efe1ad/98d8013d-cfe0-41be-8b1f-b2b1548d55cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8982595b-17fb-4d4f-92f6-4a5540efe1ad/98d8013d-cfe0-41be-8b1f-b2b1548d55cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8982595b-17fb-4d4f-92f6-4a5540efe1ad/98d8013d-cfe0-41be-8b1f-b2b1548d55cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1622107   0.0835292   0.2408922
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1354455   0.0640769   0.2068142
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2744045   0.1705216   0.3782873
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                0.1464278   0.0701634   0.2226922
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1418503   0.0688506   0.2148500
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                0.0851798   0.0343272   0.1360325
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1901815   0.0985720   0.2817909
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1453981   0.0726726   0.2181236
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2344069   0.1410260   0.3277879
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1800000   0.0732843   0.2867157
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.2653382   0.1571993   0.3734770
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2378085   0.1460693   0.3295477
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1818644   0.1114456   0.2522832
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3047619   0.2165390   0.3929848
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3716937   0.2218536   0.5215339
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.3476767   0.2307922   0.4645611
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.3743489   0.2911220   0.4575759
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2494048   0.1782130   0.3205966
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2956675   0.2289433   0.3623916
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2603746   0.2050368   0.3157123
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1311379   0.0779151   0.1843607
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1644985   0.1175770   0.2114199
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1806762   0.1241080   0.2372445
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1845996   0.1456567   0.2235426
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2751202   0.2135410   0.3366994
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1951805   0.1432014   0.2471596
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3262636   0.2230734   0.4294538
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.5013018   0.3709165   0.6316872
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.3724782   0.2782813   0.4666751
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.0908455   0.0511628   0.1305282
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.0783315   0.0398112   0.1168519
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.0953506   0.0599472   0.1307540
6 months    ki1114097-CMIN          PERU                           0%                   NA                0.0434783   0.0139889   0.0729676
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0760870   0.0377470   0.1144270
6 months    ki1114097-CMIN          PERU                           >5%                  NA                0.0786517   0.0463369   0.1109664
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4682026   0.3531853   0.5832199
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4333357   0.3292844   0.5373870
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4928727   0.3738166   0.6119288
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4494754   0.3093936   0.5895573
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4312266   0.3444721   0.5179811
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3656838   0.2442453   0.4871223
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2143995   0.1191689   0.3096301
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1514395   0.0668855   0.2359935
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2550477   0.1540818   0.3560136
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.4805763   0.3494746   0.6116779
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4054516   0.2849377   0.5259656
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2815931   0.1896390   0.3735471
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7209595   0.6284971   0.8134218
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6946101   0.5963915   0.7928287
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7538250   0.6178665   0.8897835
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5416076   0.4524244   0.6307908
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5120872   0.4274545   0.5967200
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.5929321   0.5259747   0.6598896
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2947957   0.2247424   0.3648491
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3524915   0.2945978   0.4103853
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3373742   0.2720150   0.4027335
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2357921   0.1873728   0.2842114
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2779895   0.1955749   0.3604041
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2797439   0.2042587   0.3552290
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.5850485   0.4784205   0.6916766
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7673248   0.6549463   0.8797032
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7178125   0.6275272   0.8080979
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3103501   0.2201616   0.4005385
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.2395913   0.1404504   0.3387322
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.4373103   0.3402795   0.5343410
24 months   ki1114097-CMIN          PERU                           0%                   NA                0.2070802   0.1209902   0.2931702
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.2892209   0.1904896   0.3879521
24 months   ki1114097-CMIN          PERU                           >5%                  NA                0.2648113   0.1544405   0.3751821


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.0907738   0.0690366   0.1125110
6 months    ki1114097-CMIN          PERU                           NA                   NA                0.0677165   0.0481585   0.0872746
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.3369176   0.2813564   0.3924787
24 months   ki1114097-CMIN          PERU                           NA                   NA                0.2745902   0.2184751   0.3307052


### Parameter: RR


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.8349973   0.4078997   1.7092940
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.6916542   0.9139738   3.1310458
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.9687388   0.4657177   2.0150723
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                0.5817191   0.2636096   1.2837057
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.7645230   0.3830737   1.5258039
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.2325437   0.6622292   2.2940152
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.8748906   0.4271602   1.7919125
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.6007533   0.7820878   3.2763728
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8962468   0.5108250   1.5724725
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.6854061   0.3909470   1.2016502
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.6494141   0.3952255   1.0670837
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.4993207   0.2376933   1.0489194
6 months    ki1000109-ResPak        PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                0.9353848   0.5545516   1.5777516
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  0%                1.0071436   0.6347599   1.5979871
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.1854922   0.8285121   1.6962839
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0439838   0.7364885   1.4798633
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.2543927   0.7650238   2.0568000
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.3777572   0.8258464   2.2985083
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.4903616   1.1109064   1.9994283
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0573178   0.7627663   1.4656140
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.5364931   1.0190517   2.3166745
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1416479   0.7613331   1.7119443
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                0.8622500   0.4467228   1.6642872
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.0495911   0.5913830   1.8628223
6 months    ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.7499999   0.7517625   4.0737598
6 months    ki1114097-CMIN          PERU                           >5%                  0%                1.8089887   0.8185484   3.9978577
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.9255303   0.6667957   1.2846608
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.0526910   0.7536999   1.4702912
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9593998   0.6659280   1.3822034
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.8135790   0.5190068   1.2753414
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7063427   0.3450225   1.4460508
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.1895913   0.6561793   2.1566171
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8436780   0.5661030   1.2573552
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.5859487   0.3867135   0.8878301
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9634524   0.7958910   1.1662910
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0455858   0.8419465   1.2984789
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.9454950   0.7540963   1.1854730
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0947633   0.9015710   1.3293538
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1957145   0.9028925   1.5835031
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1444340   0.8460077   1.5481291
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1789601   0.8283286   1.6780139
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.1864005   0.8521198   1.6518172
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.3115575   1.0385938   1.6562616
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.2269282   0.9830580   1.5312959
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                0.7720034   0.4661099   1.2786454
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.4090872   0.9777398   2.0307313
24 months   ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.3966613   0.8123092   2.4013796
24 months   ki1114097-CMIN          PERU                           >5%                  0%                1.2787863   0.7065281   2.3145497


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0206686   -0.0445602    0.0858975
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0279609   -0.0902196    0.0342978
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0034595   -0.0796087    0.0726898
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0149153   -0.0806247    0.1104552
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0455580   -0.1384010    0.0472851
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0699441   -0.1329657   -0.0069225
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.0185022   -0.1551257    0.1181212
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0187516   -0.0431749    0.0806782
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0300971   -0.0168574    0.0770516
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0251906   -0.0027210    0.0531021
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0564524   -0.0297187    0.1426235
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0000717   -0.0326826    0.0325393
6 months    ki1114097-CMIN          PERU                           0%                   NA                 0.0242383   -0.0031144    0.0515909
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0059385   -0.0999518    0.0880749
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0309732   -0.1541714    0.0922249
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0005128   -0.0767683    0.0777940
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1124171   -0.2224449   -0.0023893
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0060062   -0.0757075    0.0636952
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0131710   -0.0623980    0.0887399
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0344937   -0.0251467    0.0941341
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0210173   -0.0117392    0.0537737
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0967697    0.0132746    0.1802648
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0265675   -0.0474995    0.1006345
24 months   ki1114097-CMIN          PERU                           0%                   NA                 0.0675100   -0.0033335    0.1383535


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.1130179   -0.3256605    0.4065319
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2360228   -0.8858953    0.1899061
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0185273   -0.5199622    0.3174844
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0765217   -0.5697683    0.4567274
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2072887   -0.7119759    0.1486177
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2978654   -0.5939064   -0.0568089
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                -0.0523859   -0.5200035    0.2713727
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0699279   -0.1920027    0.2743019
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1866658   -0.1617780    0.4306034
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.1200751   -0.0229895    0.2431322
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1475047   -0.1102610    0.3454258
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0007896   -0.4329793    0.3010507
6 months    ki1114097-CMIN          PERU                           0%                   NA                 0.3579373   -0.1818406    0.6511843
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0128465   -0.2381138    0.1714348
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0740097   -0.4126828    0.1834707
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0023862   -0.4305842    0.3043168
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.3053491   -0.6447323   -0.0359962
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0084008   -0.1107612    0.0845268
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0237410   -0.1224599    0.1508991
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1047519   -0.0960924    0.2687942
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0818399   -0.0547682    0.2007553
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1419288    0.0082553    0.2575850
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0788546   -0.1690404    0.2741836
24 months   ki1114097-CMIN          PERU                           0%                   NA                 0.2458573   -0.0619252    0.4644338

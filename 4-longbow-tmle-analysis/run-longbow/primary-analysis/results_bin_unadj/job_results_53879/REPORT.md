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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        perdiar6    stunted   n_cell     n
----------  ----------------------  -----------------------------  ---------  --------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                0       58   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                1       14   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       78   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       12   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               0       51   231
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               1       18   231
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                0       48    65
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                1        9    65
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0        6    65
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0    65
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               0        2    65
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               1        0    65
Birth       ki0047075b-MAL-ED       INDIA                          0%                0       10    47
Birth       ki0047075b-MAL-ED       INDIA                          0%                1        2    47
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       19    47
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        5    47
Birth       ki0047075b-MAL-ED       INDIA                          >5%               0        8    47
Birth       ki0047075b-MAL-ED       INDIA                          >5%               1        3    47
Birth       ki0047075b-MAL-ED       NEPAL                          0%                0        8    27
Birth       ki0047075b-MAL-ED       NEPAL                          0%                1        0    27
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       10    27
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        0    27
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               0        7    27
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               1        2    27
Birth       ki0047075b-MAL-ED       PERU                           0%                0       58   233
Birth       ki0047075b-MAL-ED       PERU                           0%                1        9   233
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       64   233
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        8   233
Birth       ki0047075b-MAL-ED       PERU                           >5%               0       85   233
Birth       ki0047075b-MAL-ED       PERU                           >5%               1        9   233
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0       80   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        6   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       20   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        4   113
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       47   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       36   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       19   125
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   125
Birth       ki1000109-EE            PAKISTAN                       0%                0      132   240
Birth       ki1000109-EE            PAKISTAN                       0%                1       91   240
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]          0        7   240
Birth       ki1000109-EE            PAKISTAN                       (0%, 5%]          1        8   240
Birth       ki1000109-EE            PAKISTAN                       >5%               0        1   240
Birth       ki1000109-EE            PAKISTAN                       >5%               1        1   240
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                0      133   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                1       27   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      150   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       27   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               0      226   605
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               1       42   605
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                0      148   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                1       13   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      190   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       19   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%               0      153   539
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%               1       16   539
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      310   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       50   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      141   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       22   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      180   732
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       29   732
Birth       ki1114097-CMIN          BANGLADESH                     0%                0       10    26
Birth       ki1114097-CMIN          BANGLADESH                     0%                1        6    26
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0        2    26
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        2    26
Birth       ki1114097-CMIN          BANGLADESH                     >5%               0        5    26
Birth       ki1114097-CMIN          BANGLADESH                     >5%               1        1    26
Birth       ki1114097-CONTENT       PERU                           0%                0        0     2
Birth       ki1114097-CONTENT       PERU                           0%                1        0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%               0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%               1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       57   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1       14   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       80   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       12   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       60   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1       18   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      187   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        5   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       14   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          0%                0       42   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                1        8   236
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
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       72   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       33   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       77   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       19   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        7   247
6 months    ki1000109-EE            PAKISTAN                       0%                0      173   373
6 months    ki1000109-EE            PAKISTAN                       0%                1      163   373
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          0       16   373
6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          1       19   373
6 months    ki1000109-EE            PAKISTAN                       >5%               0        1   373
6 months    ki1000109-EE            PAKISTAN                       >5%               1        1   373
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0       98   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      123   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       46   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      172   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       67   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      137   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      206   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       40   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      165   604
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       35   604
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
6 months    ki1114097-CONTENT       PERU                           0%                0      101   215
6 months    ki1114097-CONTENT       PERU                           0%                1       14   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       40   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        3   215
6 months    ki1114097-CONTENT       PERU                           >5%               0       55   215
6 months    ki1114097-CONTENT       PERU                           >5%               1        2   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       33   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       31   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       47   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       36   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       31   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1       34   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      147   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        7   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          0%                0       25   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                1       23   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       70   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       52   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       35   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       22   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       60   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       17   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       63   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1       12   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       55   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1       21   228
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
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       23   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       60   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       10   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1       29   214
24 months   ki1000109-EE            PAKISTAN                       0%                0       45   167
24 months   ki1000109-EE            PAKISTAN                       0%                1      107   167
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          0        4   167
24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          1       10   167
24 months   ki1000109-EE            PAKISTAN                       >5%               0        0   167
24 months   ki1000109-EE            PAKISTAN                       >5%               1        1   167
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0       47   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       60   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0       65   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       63   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0       73   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1      121   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      107   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       45   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      152   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       80   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      129   578
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       65   578
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/40defb4d-1790-4cb8-bf0d-c75438af01dc/e5949dbe-a8bc-468f-ac3a-bd8f0e61f967/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40defb4d-1790-4cb8-bf0d-c75438af01dc/e5949dbe-a8bc-468f-ac3a-bd8f0e61f967/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40defb4d-1790-4cb8-bf0d-c75438af01dc/e5949dbe-a8bc-468f-ac3a-bd8f0e61f967/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40defb4d-1790-4cb8-bf0d-c75438af01dc/e5949dbe-a8bc-468f-ac3a-bd8f0e61f967/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1944444   0.1028288   0.2860600
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1333333   0.0629509   0.2037158
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2608696   0.1570360   0.3647032
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                0.1343284   0.0524998   0.2161570
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1111111   0.0383636   0.1838586
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                0.0957447   0.0361344   0.1553549
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1687500   0.1106689   0.2268311
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1525424   0.0995303   0.2055545
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1567164   0.1131568   0.2002760
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0807453   0.0386228   0.1228679
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0909091   0.0518982   0.1299199
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.0946746   0.0504944   0.1388547
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1388889   0.1031405   0.1746373
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1349693   0.0824784   0.1874603
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1387560   0.0918573   0.1856547
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1971831   0.1044436   0.2899226
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1304348   0.0614736   0.1993960
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2307692   0.1370732   0.3244652
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1600000   0.0581679   0.2618321
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.2500000   0.1468923   0.3531077
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2471910   0.1574050   0.3369770
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1810345   0.1108357   0.2512332
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3142857   0.2253107   0.4032608
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2403101   0.1665091   0.3141111
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2721893   0.2050226   0.3393561
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2803347   0.2233370   0.3373325
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1329114   0.0799338   0.1858890
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1626016   0.1164519   0.2087513
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1750000   0.1222966   0.2277034
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1818182   0.1408527   0.2227837
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2874251   0.2187386   0.3561117
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1932367   0.1394116   0.2470618
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3209877   0.2191088   0.4228665
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4915254   0.3636977   0.6193532
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.3689320   0.2755558   0.4623082
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4843750   0.3616473   0.6071027
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4337349   0.3268644   0.5406054
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5230769   0.4013673   0.6447866
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4791667   0.3375290   0.6208044
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4262295   0.3382832   0.5141758
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3859649   0.2593048   0.5126250
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2207792   0.1279325   0.3136259
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1600000   0.0768482   0.2431518
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2763158   0.1755593   0.3770723
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.4528302   0.3184851   0.5871753
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4375000   0.3156596   0.5593404
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2619048   0.1676465   0.3561630
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7173913   0.6251677   0.8096149
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7228916   0.6263782   0.8194050
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7435897   0.6062275   0.8809520
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5607477   0.4666013   0.6548941
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4921875   0.4054780   0.5788970
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6237113   0.5554608   0.6919619
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2960526   0.2234158   0.3686895
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3448276   0.2836124   0.4060427
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3350515   0.2685743   0.4015288
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2382671   0.1880486   0.2884857
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.3113208   0.2230879   0.3995537
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2519084   0.1774979   0.3263189
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.5882353   0.4833927   0.6930779
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7586207   0.6482648   0.8689766
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7171717   0.6282715   0.8060719


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.1586777   0.1295391   0.1878163
Birth       ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228


### Parameter: RR


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.6857143   0.3379508   1.3913390
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.3416149   0.7240380   2.4859614
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8271605   0.3382241   2.0229029
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                0.7127660   0.2983038   1.7030804
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.9039548   0.5542757   1.4742381
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                0.9286899   0.5966748   1.4454523
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1258741   0.5729659   2.2123352
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1725080   0.5822892   2.3609832
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9717791   0.6095735   1.5492057
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                0.9990431   0.6532487   1.5278821
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.6614907   0.3259923   1.3422708
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.1703297   0.6287352   2.1784552
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9842520   0.4633583   2.0907189
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.8008475   0.8483352   3.8228424
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.9887640   0.5707102   1.7130487
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.7241379   0.4111218   1.2754754
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.6297348   0.3846662   1.0309354
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.4841897   0.2310592   1.0146303
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.1326589   0.7638405   1.6795603
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.1665542   0.8071400   1.6860132
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.2233837   0.7499895   1.9955848
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.3166667   0.7989380   2.1698945
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.5808383   1.1382775   2.1954662
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0628019   0.7427813   1.5207006
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.5312907   1.0159064   2.3081371
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1493652   0.7658710   1.7248863
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.8954528   0.6288576   1.2750672
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.0799007   0.7655705   1.5232897
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.8895225   0.6202983   1.2755962
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.8054920   0.5179039   1.2527755
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7247059   0.3713812   1.4141766
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.2515480   0.7173204   2.1836441
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.9661458   0.6431668   1.4513153
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.5783730   0.3627827   0.9220818
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0076670   0.8371912   1.2128566
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0365190   0.8276299   1.2981307
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.8777344   0.6881330   1.1195767
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.1122852   0.9102921   1.3591004
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1647510   0.8604219   1.5767204
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1317297   0.8254807   1.5515953
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.3066038   0.9178117   1.8600912
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0572519   0.7355046   1.5197480
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2896552   1.0246118   1.6232591
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.2191919   0.9812652   1.5148085


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0039683   -0.0797081    0.0717716
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0227404   -0.0897220    0.0442413
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0100723   -0.0594503    0.0393057
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0083085   -0.0276578    0.0442748
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0009107   -0.0263271    0.0245056
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0146105   -0.0915636    0.0623426
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0306780   -0.0615089    0.1228648
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0302198   -0.1182927    0.0578531
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0754193   -0.1388619   -0.0119768
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0278463   -0.0372404    0.0929331
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0260290   -0.0207670    0.0728250
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0279720   -0.0031627    0.0591068
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0617284   -0.0231825    0.1466393
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0079599   -0.1104751    0.0945553
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0518539   -0.1773002    0.0735925
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0014810   -0.0769473    0.0739854
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0846710   -0.1986815    0.0293396
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0069078   -0.0623290    0.0761445
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0080169   -0.0734908    0.0895246
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0326671   -0.0303426    0.0956768
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0185422   -0.0165709    0.0536553
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0935829    0.0115565    0.1756093


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0208333   -0.5069966    0.3084917
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2037887   -0.9767724    0.2669326
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0634766   -0.4247991    0.2062162
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0932971   -0.4144963    0.4187966
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0066007   -0.2087344    0.1617307
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0800256   -0.5951790    0.2687621
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.1608889   -0.4909535    0.5277469
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1375000   -0.6172885    0.1999533
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.3157385   -0.6080477   -0.0765649
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1038437   -0.1747295    0.3163565
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1637658   -0.1876537    0.4112024
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.1333333   -0.0277610    0.2691773
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1612903   -0.0927649    0.3562806
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0167079   -0.2563680    0.1772355
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1213488   -0.4574323    0.1372339
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0067532   -0.4170070    0.2847233
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2299847   -0.5837016    0.0447302
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0095372   -0.0908342    0.1006731
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0140953   -0.1401587    0.1474800
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0993767   -0.1141801    0.2720007
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0722022   -0.0749429    0.1992050
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1372549    0.0063616    0.2509054

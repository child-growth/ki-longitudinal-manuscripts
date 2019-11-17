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




# Results Detail

## Results Plots
![](/tmp/cb9f3e87-f03c-4297-ae1b-70614a5ca1ca/ac551a89-a9af-45a0-9f0b-53410e20712f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cb9f3e87-f03c-4297-ae1b-70614a5ca1ca/ac551a89-a9af-45a0-9f0b-53410e20712f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cb9f3e87-f03c-4297-ae1b-70614a5ca1ca/ac551a89-a9af-45a0-9f0b-53410e20712f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cb9f3e87-f03c-4297-ae1b-70614a5ca1ca/ac551a89-a9af-45a0-9f0b-53410e20712f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1756824   0.0869720   0.2643929
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1353087   0.0630765   0.2075408
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2852627   0.1761887   0.3943367
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                0.1343284   0.0524998   0.2161570
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1111111   0.0383636   0.1838586
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                0.0957447   0.0361344   0.1553549
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1689374   0.1108832   0.2269916
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.1518792   0.0985490   0.2052095
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.1555027   0.1116774   0.1993280
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0798837   0.0371624   0.1226049
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0900942   0.0510363   0.1291522
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.0936710   0.0492725   0.1380694
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1384923   0.1023642   0.1746203
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.1332158   0.0805773   0.1858544
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1439363   0.0945667   0.1933058
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1951476   0.1027105   0.2875846
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1330605   0.0643205   0.2018004
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2411680   0.1467662   0.3355699
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1600000   0.0581679   0.2618321
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.2646983   0.1561977   0.3731988
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2367636   0.1453444   0.3281827
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1812386   0.1100894   0.2523878
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3142857   0.2253107   0.4032608
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2437975   0.1775720   0.3100231
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.3141679   0.2478600   0.3804758
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2500583   0.1983614   0.3017553
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1312554   0.0779137   0.1845971
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1606977   0.1142348   0.2071605
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1708140   0.1175386   0.2240894
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1845269   0.1456298   0.2234240
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2803481   0.2171272   0.3435690
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1896375   0.1387707   0.2405043
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3369352   0.2316537   0.4422167
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4902857   0.3624985   0.6180728
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.3701496   0.2765088   0.4637904
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4886397   0.3731436   0.6041357
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4365189   0.3323629   0.5406750
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5099133   0.3909184   0.6289083
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4244047   0.2886362   0.5601732
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4254038   0.3372858   0.5135219
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3750221   0.2554176   0.4946265
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2061714   0.1112324   0.3011104
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1552570   0.0716523   0.2388616
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2701092   0.1688072   0.3714112
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.4666897   0.3354382   0.5979412
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4103782   0.2888406   0.5319157
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2668948   0.1748026   0.3589869
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7145437   0.6224236   0.8066637
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7189654   0.6214351   0.8164958
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7554508   0.6164708   0.8944307
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5806723   0.4937518   0.6675928
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5198755   0.4384263   0.6013246
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.5964388   0.5301080   0.6627696
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2942294   0.2220613   0.3663976
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3462314   0.2856206   0.4068422
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3381236   0.2712152   0.4050321
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2348381   0.1860311   0.2836451
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2785897   0.1942081   0.3629714
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2684072   0.1974396   0.3393747
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.5948132   0.4881723   0.7014541
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7632831   0.6511052   0.8754611
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7193241   0.6295428   0.8091054


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.7701890   0.3695480   1.6051800
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.6237405   0.8614272   3.0606570
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8271605   0.3382241   2.0229029
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                0.7127660   0.2983038   1.7030804
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.8990266   0.5507391   1.4675713
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                0.9204754   0.5902135   1.4355399
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1278180   0.5665211   2.2452357
Birth       ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1725925   0.5735001   2.3975118
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9619010   0.5992710   1.5439651
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0393090   0.6751396   1.5999110
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.6818455   0.3395948   1.3690234
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.2358240   0.6713786   2.2748133
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9842520   0.4633583   2.0907189
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.8008475   0.8483352   3.8228424
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8944658   0.5096505   1.5698386
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.6846989   0.3881688   1.2077545
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.6297348   0.3846662   1.0309354
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.4841897   0.2310592   1.0146303
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.2886427   0.9244989   1.7962165
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0256804   0.7427947   1.4163001
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.2243127   0.7431313   2.0170616
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.3013863   0.7797849   2.1718891
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.5192800   1.1301150   2.0424574
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0276954   0.7406870   1.4259167
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.4551333   0.9684992   2.1862827
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.0985781   0.7347459   1.6425731
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.8933351   0.6477055   1.2321149
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.0435365   0.7573216   1.4379208
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                1.0023542   0.6885118   1.4592544
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.8836426   0.5666722   1.3779116
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7530480   0.3705352   1.5304383
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.3101198   0.7215388   2.3788241
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8793384   0.5877949   1.3154860
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.5718892   0.3692058   0.8858399
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0061882   0.8354287   1.2118505
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0572493   0.8448508   1.3230454
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.8952992   0.7267186   1.1029863
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0271521   0.8581770   1.2293985
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1767394   0.8719129   1.5881353
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1491836   0.8388776   1.5742737
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1863055   0.8267975   1.7021346
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.1429456   0.8249477   1.5835242
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2832316   1.0171679   1.6188905
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.2093278   0.9719499   1.5046801


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0147938   -0.0589823    0.0885698
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0227404   -0.0897220    0.0442413
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0102597   -0.0596358    0.0391164
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0091701   -0.0273006    0.0456408
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0005141   -0.0263038    0.0252755
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0125749   -0.0892675    0.0641176
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0306780   -0.0615089    0.1228648
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0449181   -0.1381509    0.0483147
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0754193   -0.1388619   -0.0119768
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0243589   -0.0322786    0.0809964
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0276850   -0.0194824    0.0748523
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0252633   -0.0026491    0.0531757
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0457808   -0.0421678    0.1337294
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0122246   -0.1074351    0.0829860
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0029081   -0.1178080    0.1236242
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0131269   -0.0645541    0.0908078
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0985305   -0.2084805    0.0114196
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0097554   -0.0593930    0.0789038
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0119077   -0.0852684    0.0614530
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0344903   -0.0279000    0.0968806
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0219712   -0.0108823    0.0548247
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0870050    0.0033636    0.1706463


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0776672   -0.4038861    0.3940407
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2037887   -0.9767724    0.2669326
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0646575   -0.4259213    0.2050784
Birth       ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1029730   -0.4154441    0.4315159
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                -0.0037261   -0.2091648    0.1668083
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0688764   -0.5830505    0.2782942
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.1608889   -0.4909535    0.5277469
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2043772   -0.7117370    0.1526009
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.3157385   -0.6080477   -0.0765649
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0908384   -0.1465411    0.2790710
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1741847   -0.1815251    0.4228045
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.1204216   -0.0226109    0.2434481
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1196209   -0.1430715    0.3219432
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0256595   -0.2464378    0.1560130
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0068055   -0.3199443    0.2526690
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0598585   -0.3709861    0.3553063
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2676301   -0.6065868   -0.0001863
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0134687   -0.0867952    0.1044827
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0209361   -0.1584417    0.1002477
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1049231   -0.1065012    0.2759496
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0855546   -0.0517317    0.2049204
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.1276073   -0.0058524    0.2433591

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

**Outcome Variable:** ever_co

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

agecat        studyid                 country                        perdiar6    ever_co   n_cell     n
------------  ----------------------  -----------------------------  ---------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       70   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       15   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       71   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        9   263
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      214   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        2   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                0       46   251
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                1       15   251
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      105   251
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       24   251
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       46   251
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       15   251
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       10   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        4   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        7   240
0-24 months   ki0047075b-MAL-ED       PERU                           0%                0       84   302
0-24 months   ki0047075b-MAL-ED       PERU                           0%                1        5   302
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       89   302
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        4   302
0-24 months   ki0047075b-MAL-ED       PERU                           >5%               0      117   302
0-24 months   ki0047075b-MAL-ED       PERU                           >5%               1        3   302
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      219   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       14   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       53   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        7   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   303
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      101   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       93   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       44   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   261
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                0       55   277
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                1        4   277
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       60   277
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1       12   277
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%               0      122   277
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%               1       24   277
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      134   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      151   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       35   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      199   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1       71   621
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      201   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      219   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       42   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      190   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       27   700
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      330   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       34   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      157   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      200   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       20   758
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                0       62   271
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                1       32   271
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       44   271
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       19   271
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       73   271
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       41   271
0-24 months   ki1114097-CMIN          BRAZIL                         0%                0       41   119
0-24 months   ki1114097-CMIN          BRAZIL                         0%                1        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%               0       31   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%               1        0   119
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0      256   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       28   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      235   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       26   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      339   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       32   916
0-24 months   ki1114097-CMIN          PERU                           0%                0      207   717
0-24 months   ki1114097-CMIN          PERU                           0%                1        5   717
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0      189   717
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1       11   717
0-24 months   ki1114097-CMIN          PERU                           >5%               0      296   717
0-24 months   ki1114097-CMIN          PERU                           >5%               1        9   717
0-24 months   ki1114097-CONTENT       PERU                           0%                0      112   215
0-24 months   ki1114097-CONTENT       PERU                           0%                1        3   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       42   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        1   215
0-24 months   ki1114097-CONTENT       PERU                           >5%               0       57   215
0-24 months   ki1114097-CONTENT       PERU                           >5%               1        0   215
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       85   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       94   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        4   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       75   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1        5   263
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      216   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        0   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                0       54   251
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                1        7   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      123   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        6   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       56   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               1        5   251
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       79   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        4   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       75   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        2   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       79   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        1   240
0-6 months    ki0047075b-MAL-ED       PERU                           0%                0       89   302
0-6 months    ki0047075b-MAL-ED       PERU                           0%                1        0   302
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       92   302
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        1   302
0-6 months    ki0047075b-MAL-ED       PERU                           >5%               0      119   302
0-6 months    ki0047075b-MAL-ED       PERU                           >5%               1        1   302
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      231   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        2   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       57   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0       10   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   303
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      112   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        1   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       99   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        3   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   261
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                0       57   277
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                1        2   277
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       68   277
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        4   277
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%               0      135   277
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%               1       11   277
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0      155   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1        9   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      171   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       14   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      248   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       22   619
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      212   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       10   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      252   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        9   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      206   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       11   700
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      356   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        8   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      171   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        3   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      214   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        6   758
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                0       91   271
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                1        3   271
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       57   271
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        6   271
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%               0      108   271
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%               1        6   271
0-6 months    ki1114097-CMIN          BRAZIL                         0%                0       41   119
0-6 months    ki1114097-CMIN          BRAZIL                         0%                1        0   119
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       47   119
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        0   119
0-6 months    ki1114097-CMIN          BRAZIL                         >5%               0       31   119
0-6 months    ki1114097-CMIN          BRAZIL                         >5%               1        0   119
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                0      250   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                1        2   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      244   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1        1   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      332   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               1        3   832
0-6 months    ki1114097-CMIN          PERU                           0%                0      201   699
0-6 months    ki1114097-CMIN          PERU                           0%                1        1   699
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]          0      194   699
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]          1        6   699
0-6 months    ki1114097-CMIN          PERU                           >5%               0      293   699
0-6 months    ki1114097-CMIN          PERU                           >5%               1        4   699
0-6 months    ki1114097-CONTENT       PERU                           0%                0      115   215
0-6 months    ki1114097-CONTENT       PERU                           0%                1        0   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       43   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   215
0-6 months    ki1114097-CONTENT       PERU                           >5%               0       57   215
0-6 months    ki1114097-CONTENT       PERU                           >5%               1        0   215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       56   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       78   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       14   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       70   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        6   239
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      188   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        2   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   207
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                0       39   235
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                1       11   235
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      104   235
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       22   235
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       45   235
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       14   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1        7   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        3   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        6   235
6-24 months   ki0047075b-MAL-ED       PERU                           0%                0       62   270
6-24 months   ki0047075b-MAL-ED       PERU                           0%                1        5   270
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       84   270
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        3   270
6-24 months   ki0047075b-MAL-ED       PERU                           >5%               0      113   270
6-24 months   ki0047075b-MAL-ED       PERU                           >5%               1        3   270
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      182   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       12   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       50   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   259
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       89   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        7   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       43   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   245
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                0       36   230
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                1        2   230
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       55   230
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        8   230
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%               0      110   230
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%               1       19   230
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      102   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       27   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      143   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       29   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      183   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1       58   542
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      146   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       14   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      211   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       39   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      182   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       22   614
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      314   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       31   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      153   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      200   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       15   730
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                0       55   251
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                1       31   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       43   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       16   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       67   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       39   251
6-24 months   ki1114097-CMIN          BRAZIL                         0%                0       41   119
6-24 months   ki1114097-CMIN          BRAZIL                         0%                1        0   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%               0       31   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%               1        0   119
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0      248   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       27   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      228   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       25   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      331   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       31   890
6-24 months   ki1114097-CMIN          PERU                           0%                0      195   666
6-24 months   ki1114097-CMIN          PERU                           0%                1        4   666
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0      185   666
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1        7   666
6-24 months   ki1114097-CMIN          PERU                           >5%               0      268   666
6-24 months   ki1114097-CMIN          PERU                           >5%               1        7   666
6-24 months   ki1114097-CONTENT       PERU                           0%                0      112   215
6-24 months   ki1114097-CONTENT       PERU                           0%                1        3   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       42   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        1   215
6-24 months   ki1114097-CONTENT       PERU                           >5%               0       57   215
6-24 months   ki1114097-CONTENT       PERU                           >5%               1        0   215


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/14b0c05b-1150-4ca7-a137-69f8cb9fd313/f2529fbe-cae6-432f-88c5-5ba0b6438727/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14b0c05b-1150-4ca7-a137-69f8cb9fd313/f2529fbe-cae6-432f-88c5-5ba0b6438727/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14b0c05b-1150-4ca7-a137-69f8cb9fd313/f2529fbe-cae6-432f-88c5-5ba0b6438727/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14b0c05b-1150-4ca7-a137-69f8cb9fd313/f2529fbe-cae6-432f-88c5-5ba0b6438727/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.1764706   0.0952733   0.2576679
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1530612   0.0816411   0.2244814
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1125000   0.0431270   0.1818730
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.2690016   0.1608924   0.3771108
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.2004218   0.1337169   0.2671267
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.2568897   0.1464907   0.3672887
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.1921819   0.1324960   0.2518678
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1939593   0.1374016   0.2505170
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.2549114   0.2023119   0.3075110
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0949136   0.0561114   0.1337158
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.1619606   0.1169332   0.2069880
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1243584   0.0790536   0.1696633
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0939027   0.0639490   0.1238563
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0989678   0.0547494   0.1431862
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0921080   0.0538302   0.1303859
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.3462189   0.2489314   0.4435065
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.2923888   0.1772755   0.4075021
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.3594802   0.2704070   0.4485533
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.0970683   0.0621331   0.1320035
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.0957538   0.0590572   0.1324504
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.0858618   0.0571251   0.1145985
0-24 months   ki1114097-CMIN          PERU            0%                   NA                0.0235849   0.0031432   0.0440266
0-24 months   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0550000   0.0233821   0.0866179
0-24 months   ki1114097-CMIN          PERU            >5%                  NA                0.0295082   0.0105032   0.0485132
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                0.1147541   0.0346110   0.1948972
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.0465116   0.0100985   0.0829248
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.0819672   0.0129910   0.1509434
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.0548780   0.0199945   0.0897616
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.0756757   0.0375337   0.1138177
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.0814815   0.0488234   0.1141396
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0450450   0.0177429   0.0723472
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.0344828   0.0123304   0.0566351
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.0506912   0.0214834   0.0798990
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2112676   0.1161172   0.3064180
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1521739   0.0786230   0.2257248
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0789474   0.0181951   0.1396997
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.1970195   0.0795310   0.3145080
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1783766   0.1114080   0.2453452
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.2151050   0.1055816   0.3246284
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2134064   0.1421674   0.2846454
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1716063   0.1145391   0.2286735
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.2367402   0.1827639   0.2907165
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0849808   0.0408562   0.1291055
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.1558969   0.1108903   0.2009035
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1027655   0.0597830   0.1457481
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0879569   0.0575874   0.1183263
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0957501   0.0503945   0.1411058
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0680169   0.0335445   0.1024892
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.3478006   0.2451428   0.4504584
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.2435270   0.1265653   0.3604886
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.3617142   0.2691768   0.4542515
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.0968412   0.0614936   0.1321887
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.0952800   0.0583196   0.1322403
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.0850161   0.0559451   0.1140871


### Parameter: E(Y)


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2206119   0.1879724   0.2532514
0-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.0938865   0.0749878   0.1127851
0-24 months   ki1114097-CMIN          PERU            NA                   NA                0.0348675   0.0214307   0.0483043
0-6 months    ki0047075b-MAL-ED       INDIA           NA                   NA                0.0717131   0.0397302   0.1036961
0-6 months    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.0726979   0.0522275   0.0931683
0-6 months    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.0932584   0.0741430   0.1123738


### Parameter: RR


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.8673469   0.4503955   1.6702892
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.6375000   0.2953502   1.3760149
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.7450579   0.4434518   1.2517960
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                0.9549747   0.5300284   1.7206185
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.0092484   0.6601971   1.5428459
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.3264072   0.9149785   1.9228386
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.7064007   1.0424971   2.7931048
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.3102281   0.7577719   2.2654543
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                1.0539399   0.6085489   1.8253081
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.9808883   0.5809604   1.6561230
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.8445199   0.5208329   1.3693718
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  0%                1.0383031   0.7135255   1.5109107
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                0.9864578   0.5830401   1.6690087
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.8845499   0.5411432   1.4458806
0-24 months   ki1114097-CMIN          PERU            0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          PERU            (0%, 5%]             0%                2.3320000   0.8242181   6.5980403
0-24 months   ki1114097-CMIN          PERU            >5%                  0%                1.2511475   0.4249566   3.6836005
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.4053156   0.1419600   1.1572328
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  0%                0.7142857   0.2392998   2.1320709
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.3789790   0.6126960   3.1036321
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.4847737   0.7003297   3.1478783
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                0.7655172   0.3165046   1.8515265
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1253456   0.4876348   2.5970311
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.7202899   0.3720423   1.3945120
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.3736842   0.1532046   0.9114602
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.9053753   0.4499811   1.8216420
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                1.0917955   0.5001539   2.3833009
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                0.8041289   0.5023527   1.2871900
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.1093397   0.7408777   1.6610496
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.8344953   1.0143091   3.3178970
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.2092789   0.6207133   2.3559273
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                1.0886033   0.6057500   1.9563471
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.7732979   0.4185866   1.4285924
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.7001912   0.3978622   1.2322552
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  0%                1.0400043   0.7036161   1.5372145
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                0.9838785   0.5775930   1.6759500
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.8778916   0.5321558   1.4482481


### Parameter: PAR


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0281816   -0.0928591   0.0364958
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0538622   -0.1466372   0.0389129
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0284300   -0.0237814   0.0806414
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0336579   -0.0006297   0.0679454
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0002351   -0.0218622   0.0213919
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0067355   -0.0855108   0.0720397
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0031819   -0.0319293   0.0255656
0-24 months   ki1114097-CMIN          PERU            0%                   NA                 0.0112826   -0.0074606   0.0300258
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0430410   -0.1087975   0.0227156
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0178199   -0.0136619   0.0493016
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                -0.0021879   -0.0245047   0.0201289
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0648241   -0.1402695   0.0106213
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0029805   -0.1003856   0.1063466
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                -0.0030743   -0.0653131   0.0591644
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0371690   -0.0030077   0.0773457
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0016555   -0.0233900   0.0200790
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0051711   -0.0881094   0.0777671
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0035827   -0.0326875   0.0255220


### Parameter: PAF


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.1900452   -0.7139097    0.1736976
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.2503593   -0.7667440    0.1150963
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.1288689   -0.1423926    0.3357193
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.2617834   -0.0540994    0.4830054
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0025102   -0.2621568    0.2037229
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0198406   -0.2804022    0.1876968
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0338907   -0.3900441    0.2310100
0-24 months   ki1114097-CMIN          PERU            0%                   NA                 0.3235849   -0.4669086    0.6880942
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                -0.6001821   -1.7855784    0.0807716
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.2451220   -0.3311018    0.5719029
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                -0.0510511   -0.7245378    0.3594178
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.4426559   -1.0488447   -0.0158194
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                 0.0149025   -0.6650065    0.4171692
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                -0.0146165   -0.3581892    0.2420448
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.3042903   -0.1095012    0.5637571
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0191829   -0.3046990    0.2038518
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0150925   -0.2884065    0.2002425
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0384174   -0.4022563    0.2310173

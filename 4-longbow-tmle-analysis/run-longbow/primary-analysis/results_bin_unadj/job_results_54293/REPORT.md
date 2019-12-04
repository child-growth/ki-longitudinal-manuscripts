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

unadjusted

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
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      213   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        3   233
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
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       72   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       11   240
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
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      218   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       15   303
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
0-24 months   ki1000109-EE            PAKISTAN                       0%                0      188   379
0-24 months   ki1000109-EE            PAKISTAN                       0%                1      154   379
0-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          0       20   379
0-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          1       15   379
0-24 months   ki1000109-EE            PAKISTAN                       >5%               0        1   379
0-24 months   ki1000109-EE            PAKISTAN                       >5%               1        1   379
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
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      215   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        1   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                0       54   251
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                1        7   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      123   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        6   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       55   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               1        6   251
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       78   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        5   240
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
0-6 months    ki1000109-EE            PAKISTAN                       0%                0      290   379
0-6 months    ki1000109-EE            PAKISTAN                       0%                1       52   379
0-6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          0       31   379
0-6 months    ki1000109-EE            PAKISTAN                       (0%, 5%]          1        4   379
0-6 months    ki1000109-EE            PAKISTAN                       >5%               0        1   379
0-6 months    ki1000109-EE            PAKISTAN                       >5%               1        1   379
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
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      181   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       13   259
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
6-24 months   ki1000109-EE            PAKISTAN                       0%                0      194   372
6-24 months   ki1000109-EE            PAKISTAN                       0%                1      141   372
6-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          0       21   372
6-24 months   ki1000109-EE            PAKISTAN                       (0%, 5%]          1       14   372
6-24 months   ki1000109-EE            PAKISTAN                       >5%               0        1   372
6-24 months   ki1000109-EE            PAKISTAN                       >5%               1        1   372
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d66cb985-6e6e-4921-8328-661490616256/263dc24b-030b-4c4b-b4fb-2fe1dbdff46a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d66cb985-6e6e-4921-8328-661490616256/263dc24b-030b-4c4b-b4fb-2fe1dbdff46a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d66cb985-6e6e-4921-8328-661490616256/263dc24b-030b-4c4b-b4fb-2fe1dbdff46a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d66cb985-6e6e-4921-8328-661490616256/263dc24b-030b-4c4b-b4fb-2fe1dbdff46a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.1764706   0.0952733   0.2576679
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1530612   0.0816411   0.2244814
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.1125000   0.0431270   0.1818730
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.2459016   0.1376225   0.3541808
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1860465   0.1187596   0.2533334
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.2459016   0.1376225   0.3541808
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.1878788   0.1282295   0.2475281
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1881720   0.1319572   0.2443869
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.2629630   0.2104087   0.3155172
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0945946   0.0560701   0.1331191
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1609195   0.1163083   0.2055308
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1244240   0.0804771   0.1683708
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0934066   0.0634923   0.1233209
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0977011   0.0535558   0.1418465
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0909091   0.0528962   0.1289220
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.3404255   0.2444568   0.4363943
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.3015873   0.1880488   0.4151258
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.3596491   0.2713926   0.4479057
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                0.1147541   0.0346110   0.1948972
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.0465116   0.0100985   0.0829248
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  NA                0.0983607   0.0234787   0.1732426
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0548780   0.0199945   0.0897616
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0756757   0.0375337   0.1138177
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0814815   0.0488234   0.1141396
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0450450   0.0177429   0.0723472
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0344828   0.0123304   0.0566351
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.0506912   0.0214834   0.0798990
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                0.2112676   0.1161172   0.3064180
6-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             NA                0.1521739   0.0786230   0.2257248
6-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  NA                0.0789474   0.0181951   0.1396997
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.2200000   0.1049338   0.3350662
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1746032   0.1081759   0.2410304
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.2372881   0.1285038   0.3460725
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.2093023   0.1390361   0.2795685
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.1686047   0.1126001   0.2246092
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.2406639   0.1866428   0.2946850
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0875000   0.0436810   0.1313190
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.1560000   0.1109841   0.2010159
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.1078431   0.0652437   0.1504426
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0898551   0.0596581   0.1200520
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.1000000   0.0548724   0.1451276
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0697674   0.0356914   0.1038434
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.3604651   0.2587865   0.4621437
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.2711864   0.1575203   0.3848526
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.3679245   0.2759377   0.4599114


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2206119   0.1879724   0.2532514
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.3394834   0.2830004   0.3959663
0-6 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.0756972   0.0429084   0.1084860
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0726979   0.0522275   0.0931683
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.3426295   0.2837999   0.4014590


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.8673469   0.4503955   1.6702892
0-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.6375000   0.2953502   1.3760149
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.7565891   0.4279462   1.3376148
0-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                1.0000000   0.5364790   1.8640059
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.0015609   0.6476646   1.5488329
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.3996416   0.9618105   2.0367801
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.7011493   1.0393998   2.7842117
0-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.3153390   0.7672139   2.2550641
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.0459770   0.6011702   1.8198971
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.9732620   0.5747629   1.6480517
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.8859127   0.5535198   1.4179101
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0564693   0.7270058   1.5352387
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.4053156   0.1419600   1.1572328
0-6 months    ki0047075b-MAL-ED       INDIA        >5%                  0%                0.8571429   0.3050544   2.4084031
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                1.3789790   0.6126960   3.1036321
0-6 months    ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.4847737   0.7003297   3.1478783
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                0.7655172   0.3165046   1.8515265
0-6 months    ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.1253456   0.4876348   2.5970311
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH   (0%, 5%]             0%                0.7202899   0.3720423   1.3945120
6-24 months   ki0047075b-MAL-ED       BANGLADESH   >5%                  0%                0.3736842   0.1532046   0.9114602
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             0%                0.7936508   0.4156667   1.5153526
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  0%                1.0785824   0.5380188   2.1622665
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             0%                0.8055556   0.5023324   1.2918134
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  0%                1.1498386   0.7678020   1.7219659
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             0%                1.7828571   1.0002398   3.1778177
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  0%                1.2324930   0.6512974   2.3323279
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.1129032   0.6340105   1.9535222
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  0%                0.7764441   0.4291707   1.4047220
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             0%                0.7523237   0.4539311   1.2468653
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  0%                1.0206939   0.7001607   1.4879668


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0281816   -0.0928591   0.0364958
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0307622   -0.1236076   0.0620832
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0327331   -0.0195414   0.0850077
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0339768   -0.0000600   0.0680137
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0002610   -0.0213311   0.0218530
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0009421   -0.0784734   0.0765891
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0390569   -0.1052092   0.0270954
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0178199   -0.0136619   0.0493016
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                -0.0021879   -0.0245047   0.0201289
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.0648241   -0.1402695   0.0106213
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.0200000   -0.1211569   0.0811569
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0010298   -0.0603417   0.0624013
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.0346498   -0.0052421   0.0745418
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0035537   -0.0251287   0.0180213
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0178356   -0.0997800   0.0641087


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.1900452   -0.7139097    0.1736976
0-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1429872   -0.6665945    0.2161142
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.1483743   -0.1241290    0.3548192
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.2642642   -0.0488216    0.4838902
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                 0.0027859   -0.2565525    0.2085998
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0027752   -0.2592540    0.2014652
0-6 months    ki0047075b-MAL-ED       INDIA        0%                   NA                -0.5159620   -1.6595874    0.1359032
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.2451220   -0.3311018    0.5719029
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0%                   NA                -0.0510511   -0.7245378    0.3594178
6-24 months   ki0047075b-MAL-ED       BANGLADESH   0%                   NA                -0.4426559   -1.0488447   -0.0158194
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                -0.1000000   -0.7416777    0.3052675
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                 0.0048960   -0.3341720    0.2577928
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                 0.2836667   -0.1230568    0.5430922
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                -0.0411778   -0.3235478    0.1809504
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                -0.0520552   -0.3206056    0.1618844
